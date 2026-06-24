import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/activity_bloc.dart';
import '../../domain/entities/activity_state.dart';
import '../../data/datasources/activity_datasource_impl.dart';
import '../../../../injection_container.dart';
import '../../../activity_record/data/repositories/activity_record_repository.dart';
import '../../../activity_record/domain/entities/activity_record.dart';
import '../../../auth/data/datasources/accelerometer_datasource.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  DateTime? _sessionStart;
  bool _hadFall = false;
  String _currentActivityType = 'stationary';

  @override
  void initState() {
    super.initState();
    _requestPermissionsAndStart();
  }

  Future<void> _requestPermissionsAndStart() async {
    final datasource = sl<ActivityDataSourceImpl>();
    final granted = await datasource.requestPermissions();

    if (!mounted) return;

    if (granted) {
      setState(() {
        _sessionStart = DateTime.now();
        _hadFall = false;
        _currentActivityType = 'stationary';
      });
      context.read<ActivityBloc>().add(ActivityStarted());
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Permisos denegados. Ve a Ajustes > Permisos.'),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      );
    }
  }

  Future<void> _saveSessionRecord() async {
    if (_sessionStart == null) return;

    final accelerometer = sl<AccelerometerDataSource>();
    int currentSteps = 0;
    await accelerometer.stepStream.first.then((data) {
      currentSteps = data.stepCount;
    }).catchError((_) {});

    final record = ActivityRecord(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      activityType: _currentActivityType,
      startedAt: _sessionStart!,
      endedAt: DateTime.now(),
      steps: currentSteps,
      distanceKm: currentSteps * 0.0007,
      calories: currentSteps * 0.04,
      hadFallDetected: _hadFall,
    );

    await sl<ActivityRecordRepository>().saveRecord(record);
  }

  void _showFallDialog(BuildContext context, FallAlert state) {
    _hadFall = true;
    bool showSecondary = false;
    Timer? secondaryTimer;

    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) {
        return StatefulBuilder(
          builder: (ctx, setDialogState) {
            secondaryTimer ??= Timer(
              const Duration(seconds: 15),
              () => setDialogState(() => showSecondary = true),
            );

            return AlertDialog(
              backgroundColor: const Color(0xFF1A1A1A),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              title: const Row(
                children: [
                  Icon(Icons.warning_amber_rounded,
                      color: Colors.orange, size: 28),
                  SizedBox(width: 8),
                  Text(
                    '¿Estás bien?',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Se detectó una posible caída.',
                    style: TextStyle(color: Color(0xFF9E9E9E)),
                  ),
                  if (showSecondary) ...[
                    const SizedBox(height: 12),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.red),
                      ),
                      child: const Text(
                        '¡Por favor responde! ¿Necesitas ayuda?',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    secondaryTimer?.cancel();
                    context.read<ActivityBloc>().add(FallConfirmed());
                    Navigator.pop(dialogContext);
                  },
                  child: const Text(
                    'Estoy bien',
                    style: TextStyle(color: Color(0xFFFF6B35)),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    secondaryTimer?.cancel();
                    context.read<ActivityBloc>().add(FallDismissed());
                    Navigator.pop(dialogContext);
                  },
                  child: const Text('Necesito ayuda'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0F0F),
      appBar: AppBar(
        title: const Text(
          'Detector de Actividad',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF1A1A1A),
        elevation: 0,
      ),
      body: BlocListener<ActivityBloc, ActivityBlocState>(
        listener: (context, state) {
          if (state is FallAlert) {
            _showFallDialog(context, state);
          }
        },
        child: BlocBuilder<ActivityBloc, ActivityBlocState>(
          builder: (context, state) {
            // Rastrear tipo de actividad en tiempo real
            if (state is ActivityTracking) {
              switch (state.current.type) {
                case UserActivityType.walking:
                  _currentActivityType = 'walking';
                  break;
                case UserActivityType.running:
                  _currentActivityType = 'running';
                  break;
                case UserActivityType.stationary:
                  if (_currentActivityType == 'stationary') {
                    _currentActivityType = 'stationary';
                  }
                  break;
                default:
                  break;
              }
            }

            return Column(
              children: [
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color:
                                  const Color(0xFFFF6B35).withOpacity(0.15),
                              width: 2,
                            ),
                          ),
                          child: Center(
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 400),
                              width: 160,
                              height: 160,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: state is ActivityTracking
                                    ? const Color(0xFFFF6B35).withOpacity(0.15)
                                    : const Color(0xFF1A1A1A),
                                border: Border.all(
                                  color: state is ActivityTracking
                                      ? const Color(0xFFFF6B35)
                                      : const Color(0xFF2A2A2A),
                                  width: 2,
                                ),
                              ),
                              child: Icon(
                                _getIcon(state),
                                size: 72,
                                color: state is ActivityTracking
                                    ? const Color(0xFFFF6B35)
                                    : const Color(0xFF4A4A4A),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                        Text(
                          _getLabel(state),
                          style: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          state is ActivityTracking
                              ? 'Sesión activa'
                              : 'Listo para iniciar',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xFF6B6B6B),
                          ),
                        ),
                        if (state is ActivityTracking) ...[
                          const SizedBox(height: 16),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: const Color(0xFF1A1A1A),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: const Color(0xFF2A2A2A)),
                            ),
                            child: Text(
                              'Tipo: ${_typeLabel(_currentActivityType)}',
                              style: const TextStyle(
                                color: Color(0xFFFF6B35),
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 0, 32, 48),
                  child: GestureDetector(
                    onTap: () async {
                      if (state is ActivityTracking) {
                        await _saveSessionRecord();
                        if (context.mounted) {
                          context
                              .read<ActivityBloc>()
                              .add(ActivityStopped());
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: const Text(
                                  'Sesión guardada en historial'),
                              backgroundColor: const Color(0xFFFF6B35),
                              behavior: SnackBarBehavior.floating,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          );
                        }
                      } else {
                        await _requestPermissionsAndStart();
                      }
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: double.infinity,
                      height: 64,
                      decoration: BoxDecoration(
                        color: state is ActivityTracking
                            ? const Color(0xFF2A2A2A)
                            : const Color(0xFFFF6B35),
                        borderRadius: BorderRadius.circular(20),
                        border: state is ActivityTracking
                            ? Border.all(color: Colors.red, width: 1.5)
                            : null,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            state is ActivityTracking
                                ? Icons.stop_rounded
                                : Icons.play_arrow_rounded,
                            color: state is ActivityTracking
                                ? Colors.red
                                : Colors.white,
                            size: 28,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            state is ActivityTracking
                                ? 'Detener sesión'
                                : 'Iniciar sesión',
                            style: TextStyle(
                              color: state is ActivityTracking
                                  ? Colors.red
                                  : Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  IconData _getIcon(ActivityBlocState state) {
    if (state is ActivityTracking) {
      switch (state.current.type) {
        case UserActivityType.walking:
          return Icons.directions_walk;
        case UserActivityType.running:
          return Icons.directions_run;
        case UserActivityType.stationary:
          return Icons.accessibility_new;
        case UserActivityType.unknown:
          return Icons.help_outline;
      }
    }
    return Icons.fitness_center;
  }

  String _getLabel(ActivityBlocState state) {
    if (state is ActivityTracking) return state.current.label;
    return 'Presiona Iniciar';
  }

  String _typeLabel(String type) {
    switch (type) {
      case 'running':
        return 'Corriendo';
      case 'walking':
        return 'Caminando';
      default:
        return 'Estacionario';
    }
  }
}