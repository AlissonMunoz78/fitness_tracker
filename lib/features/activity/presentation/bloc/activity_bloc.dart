import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../data/datasources/activity_datasource_impl.dart';
import '../../domain/entities/activity_state.dart';
import '../../domain/entities/fall_event.dart';
import '../../data/services/tts_service.dart';

// ═══════════════════════════════════════════════════════════════
// EVENTOS
// ═══════════════════════════════════════════════════════════════

abstract class ActivityEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ActivityStarted extends ActivityEvent {}

class ActivityStopped extends ActivityEvent {}

class ActivityChanged extends ActivityEvent {
  final ActivityState state;
  ActivityChanged(this.state);

  @override
  List<Object?> get props => [state];
}

class FallDetected extends ActivityEvent {
  final FallEvent event;
  FallDetected(this.event);

  @override
  List<Object?> get props => [event];
}

class FallConfirmed extends ActivityEvent {}

class FallDismissed extends ActivityEvent {}

// ═══════════════════════════════════════════════════════════════
// ESTADOS
// ═══════════════════════════════════════════════════════════════

abstract class ActivityBlocState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ActivityInitial extends ActivityBlocState {}

class ActivityTracking extends ActivityBlocState {
  final ActivityState current;
  ActivityTracking(this.current);

  @override
  List<Object?> get props => [current];
}

class FallAlert extends ActivityBlocState {
  final FallEvent event;
  FallAlert(this.event);

  @override
  List<Object?> get props => [event];
}

class FallResolved extends ActivityBlocState {}

// ═══════════════════════════════════════════════════════════════
// BLOC
// ═══════════════════════════════════════════════════════════════

class ActivityBloc extends Bloc<ActivityEvent, ActivityBlocState> {
  final ActivityDataSourceImpl _dataSource;
  final TtsService _ttsService;

  StreamSubscription<ActivityState>? _activitySub;
  StreamSubscription<FallEvent>? _fallSub;

  // 🔥 debounce más estable para cambios de actividad
  static const Duration _debounceDuration = Duration(milliseconds: 1800);

  UserActivityType? _lastAnnouncedType;
  UserActivityType? _pendingType;
  Timer? _debounceTimer;

  ActivityBloc({
    required ActivityDataSourceImpl dataSource,
    required TtsService ttsService,
  })  : _dataSource = dataSource,
        _ttsService = ttsService,
        super(ActivityInitial()) {
    on<ActivityStarted>(_onStarted);
    on<ActivityStopped>(_onStopped);
    on<ActivityChanged>(_onActivityChanged);
    on<FallDetected>(_onFallDetected);
    on<FallConfirmed>(_onFallConfirmed);
    on<FallDismissed>(_onFallDismissed);
  }

  // ─────────────────────────────────────────────
  // START
  // ─────────────────────────────────────────────
  Future<void> _onStarted(
    ActivityStarted event,
    Emitter<ActivityBlocState> emit,
  ) async {
    final hasPermission = await _dataSource.requestPermissions();
    if (!hasPermission) return;

    await _ttsService.init();

    emit(ActivityTracking(ActivityState(
      type: UserActivityType.unknown,
      detectedAt: DateTime.now(),
    )));

    // limpiar previos SIEMPRE (evita doble stream bug)
    await _cancelSubscriptions();

    _activitySub = _dataSource.activityStream.listen(
      (activityState) => add(ActivityChanged(activityState)),
    );

    _fallSub = _dataSource.fallStream.listen(
      (fallEvent) => add(FallDetected(fallEvent)),
    );
  }

  // ─────────────────────────────────────────────
  // STOP
  // ─────────────────────────────────────────────
  Future<void> _onStopped(
    ActivityStopped event,
    Emitter<ActivityBlocState> emit,
  ) async {
    await _cancelSubscriptions();
    emit(ActivityInitial());
  }

  // ─────────────────────────────────────────────
  // ACTIVITY UPDATE
  // ─────────────────────────────────────────────
  void _onActivityChanged(
    ActivityChanged event,
    Emitter<ActivityBlocState> emit,
  ) {
    // 🔥 si hay caída, ignorar actividad completamente
    if (state is FallAlert) return;

    final incoming = event.state.type;

    // 🔥 evita spam de cambios iguales
    if (incoming == _lastAnnouncedType) {
      _pendingType = null;
      _debounceTimer?.cancel();
      emit(ActivityTracking(event.state));
      return;
    }

    // debounce inteligente
    if (incoming != _pendingType) {
      _pendingType = incoming;
      _debounceTimer?.cancel();

      if (incoming != UserActivityType.unknown) {
        _debounceTimer = Timer(_debounceDuration, () async {
          if (_pendingType == incoming &&
              _pendingType != _lastAnnouncedType) {

            await _ttsService.speak(event.state.voiceMessage);

            _lastAnnouncedType = _pendingType;
          }
        });
      }
    }

    emit(ActivityTracking(event.state));
  }

  // ─────────────────────────────────────────────
  // FALL DETECTED
  // ─────────────────────────────────────────────
  Future<void> _onFallDetected(
    FallDetected event,
    Emitter<ActivityBlocState> emit,
  ) async {
    _debounceTimer?.cancel();
    _pendingType = null;

    await _ttsService.speak(
      '¡Atención! Se detectó una posible caída. ¿Estás bien?',
    );

    emit(FallAlert(event.event));
  }

  // ─────────────────────────────────────────────
  // FALL CONFIRMED
  // ─────────────────────────────────────────────
  Future<void> _onFallConfirmed(
    FallConfirmed event,
    Emitter<ActivityBlocState> emit,
  ) async {
    await _ttsService.speak(
      'Perfecto, continuamos el seguimiento.',
    );

    emit(FallResolved());
  }

  // ─────────────────────────────────────────────
  // FALL DISMISSED
  // ─────────────────────────────────────────────
  Future<void> _onFallDismissed(
    FallDismissed event,
    Emitter<ActivityBlocState> emit,
  ) async {
    await _ttsService.speak(
      'Entendido. Ayuda activada.',
    );

    emit(FallResolved());
  }

  // ─────────────────────────────────────────────
  // CLEANUP
  // ─────────────────────────────────────────────
  Future<void> _cancelSubscriptions() async {
    await _activitySub?.cancel();
    await _fallSub?.cancel();

    _activitySub = null;
    _fallSub = null;

    _debounceTimer?.cancel();
    _debounceTimer = null;

    _lastAnnouncedType = null;
    _pendingType = null;
  }

  @override
  Future<void> close() async {
    await _cancelSubscriptions();
    _ttsService.dispose();
    return super.close();
  }
}