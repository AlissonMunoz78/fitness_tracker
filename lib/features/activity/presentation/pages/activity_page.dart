import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/activity_bloc.dart';
import '../../../../injection_container.dart';
import '../../../activity_record/data/repositories/activity_record_repository.dart';
import '../../../activity_record/domain/entities/activity_record.dart';
import '../../../auth/data/datasources/accelerometer_datasource.dart';
import '../../data/datasources/activity_datasource_impl.dart';
import '../../domain/entities/activity_state.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  DateTime? _sessionStart;
  bool _hadFall = false;
  final _activityTypeCounts = <UserActivityType, int>{};

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
        _activityTypeCounts.clear();
      });

      context.read<ActivityBloc>().add(ActivityStarted());
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Permisos denegados'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<void> _saveSession(ActivityState activityState) async {
    if (_sessionStart == null) return;

    final accelerometer = sl<AccelerometerDataSource>();

    int steps = 0;
    try {
      final data = await accelerometer.stepStream.first;
      steps = data.stepCount;
    } catch (_) {}

    final savedType = _dominantType() ?? activityState.type;

    final record = ActivityRecord(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      activityType: savedType.name,
      startedAt: _sessionStart!,
      endedAt: DateTime.now(),
      steps: steps,
      distanceKm: steps * 0.0007,
      calories: steps * 0.04,
      hadFallDetected: _hadFall,
    );

    await sl<ActivityRecordRepository>().saveRecord(record);
  }

  void _showFallDialog(BuildContext context, FallAlert state) {
    _hadFall = true;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) {
        return AlertDialog(
          backgroundColor: const Color(0xFF1A1A1A),
          title: const Text(
            '¿Estás bien?',
            style: TextStyle(color: Colors.white),
          ),
          content: const Text(
            'Se detectó una posible caída.',
            style: TextStyle(color: Colors.grey),
          ),
          actions: [
            TextButton(
              onPressed: () {
                context.read<ActivityBloc>().add(FallConfirmed());
                Navigator.pop(dialogContext);
              },
              child: const Text('Estoy bien'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<ActivityBloc>().add(FallDismissed());
                Navigator.pop(dialogContext);
              },
              child: const Text('Ayuda'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0F0F),
      appBar: AppBar(
        title: const Text('Detector de Actividad'),
        backgroundColor: const Color(0xFF1A1A1A),
      ),

      body: BlocListener<ActivityBloc, ActivityBlocState>(
        listener: (context, state) {
          if (state is FallAlert) {
            _showFallDialog(context, state);
          } else if (state is ActivityTracking) {
            final current = state.current.type;
            if (current == UserActivityType.unknown) return;
            _activityTypeCounts[current] =
                (_activityTypeCounts[current] ?? 0) + 1;
          }
        },

        child: BlocBuilder<ActivityBloc, ActivityBlocState>(
          builder: (context, state) {

            final isTracking = state is ActivityTracking;

            final activityType = isTracking
                ? state.current.type
                : UserActivityType.unknown;

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
                              color: const Color(0xFFFF6B35).withOpacity(0.15),
                            ),
                          ),
                          child: Icon(
                            _getIcon(activityType),
                            size: 90,
                            color: isTracking
                                ? const Color(0xFFFF6B35)
                                : Colors.grey,
                          ),
                        ),

                        const SizedBox(height: 20),

                        Text(
                          _getLabel(activityType),
                          style: const TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 10),

                        Text(
                          isTracking ? 'Sesión activa' : 'Listo para iniciar',
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(24),
                  child: GestureDetector(
                    onTap: () async {
                      final blocState = context.read<ActivityBloc>().state;
                      if (blocState is ActivityTracking) {
                        await _saveSession(blocState.current);

                        context.read<ActivityBloc>().add(ActivityStopped());

                        if (mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Sesión guardada'),
                              backgroundColor: Color(0xFFFF6B35),
                            ),
                          );
                        }
                      } else {
                        _requestPermissionsAndStart();
                      }
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: isTracking
                            ? Colors.red
                            : const Color(0xFFFF6B35),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Text(
                          isTracking ? 'DETENER' : 'INICIAR',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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

  IconData _getIcon(UserActivityType type) {
    switch (type) {
      case UserActivityType.running:
        return Icons.directions_run;
      case UserActivityType.walking:
        return Icons.directions_walk;
      case UserActivityType.stationary:
        return Icons.accessibility_new;
      default:
        return Icons.fitness_center;
    }
  }

  String _getLabel(UserActivityType type) {
    switch (type) {
      case UserActivityType.running:
        return 'Corriendo';
      case UserActivityType.walking:
        return 'Caminando';
      case UserActivityType.stationary:
        return 'Estacionario';
      default:
        return 'Esperando...';
    }
  }

  UserActivityType? _dominantType() {
    UserActivityType? best;
    int bestCount = 0;
    _activityTypeCounts.forEach((type, count) {
      if (type != UserActivityType.unknown && count > bestCount) {
        best = type;
        bestCount = count;
      }
    });
    return best;
  }
}