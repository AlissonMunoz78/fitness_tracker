import 'dart:math';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../domain/entities/step_data.dart';

abstract class AccelerometerDataSource {
  Stream<StepData> get stepStream;
  Future<void> startCounting();
  Future<void> stopCounting();
  Future<bool> requestPermissions();
}

class AccelerometerDataSourceImpl implements AccelerometerDataSource {
  int _stepCount = 0;
  DateTime? _lastStepTime;

  // ───────── CONFIG INFINIX NOTE 40 PRO ─────────
  static const double _stepThreshold = 12.5;
  static const Duration _stepCooldown = Duration(milliseconds: 350);

  // ───────── VENTANA PRO (CLAVE) ─────────
  // 30 muestras a ~100 Hz = ~300ms, captura al menos una zancada completa
  static const int _windowSize = 30;
  final List<ActivityType> _activityWindow = [];

  final List<double> _buffer = [];
  static const int _smoothSize = 5;

  late final Stream<StepData> _stream =
      accelerometerEventStream().map((event) {
    // ───────────────────────────────
    // 1. Magnitud total
    final double magnitude = sqrt(
      event.x * event.x +
          event.y * event.y +
          event.z * event.z,
    );

    // ───────────────────────────────
    // 2. Quitar gravedad
    final double net = (magnitude - 9.8).abs();

    // ───────────────────────────────
    // 3. Suavizado (reduce ruido del Infinix)
    _buffer.add(net);
    if (_buffer.length > _smoothSize) {
      _buffer.removeAt(0);
    }

    final double smooth =
        _buffer.reduce((a, b) => a + b) / _buffer.length;

    final now = DateTime.now();

    // ───────────────────────────────
    // 4. Detección de pasos estable
    if (magnitude > _stepThreshold) {
      if (_lastStepTime == null ||
          now.difference(_lastStepTime!) > _stepCooldown) {
        _stepCount++;
        _lastStepTime = now;
      }
    }

    // ───────────────────────────────
    // 5. Clasificación instantánea
    // Usa step detection como apoyo: si hubo un paso en los últimos 2s,
    // el usuario NO puede estar stationary, subimos a walking como mínimo.
    final bool recentlyStepped = _lastStepTime != null &&
        now.difference(_lastStepTime!) < const Duration(seconds: 2);

    // Detección de movimiento (más sensible que step counting)
    // Si la magnitud supera 10.8 (~1G neto), hay movimiento activo
    final bool isMoving = magnitude > 10.8;

    ActivityType instantType;

    if (smooth < 0.6 && !recentlyStepped && !isMoving) {
      instantType = ActivityType.stationary;
    } else if (smooth < 3.0) {
      instantType = ActivityType.walking;
    } else {
      instantType = ActivityType.running;
    }

    // ───────────────────────────────
    // 6. VENTANA PRO (ESTABILIZA TODO)
    _activityWindow.add(instantType);
    if (_activityWindow.length > _windowSize) {
      _activityWindow.removeAt(0);
    }

    final ActivityType stableType = _resolveStableActivity();

    return StepData(
      stepCount: _stepCount,
      activityType: stableType,
      magnitude: smooth,
    );
  }).asBroadcastStream();

  // ───────────────────────────────
  // DECISIÓN POR UMBRAL MÍNIMO
  // Los picos de aceleración al caminar/correr son breves (~30-50ms).
  // La mayoría de muestras entre zancadas muestran ~0G neto.
  // No usamos mayoría (ahoga los picos) ni máximo (cualquier pico aislado
  // clasifica mal). Usamos un mínimo de ocurrencias en la ventana:
  //   ≥3 muestras running → running
  //   ≥3 muestras walking  → walking
  //   sino → stationary
  ActivityType _resolveStableActivity() {
    if (_activityWindow.isEmpty) return ActivityType.stationary;

    int runningCount = 0;
    int walkingCount = 0;

    for (final a in _activityWindow) {
      if (a == ActivityType.running) {
        runningCount++;
      } else if (a == ActivityType.walking) {
        walkingCount++;
      }
    }

    if (runningCount >= 3) return ActivityType.running;
    if (walkingCount >= 3) return ActivityType.walking;
    return ActivityType.stationary;
  }

  @override
  Stream<StepData> get stepStream => _stream;

  @override
  Future<void> startCounting() async {
    _stepCount = 0;
    _lastStepTime = null;
    _buffer.clear();
    _activityWindow.clear();
  }

  @override
  Future<void> stopCounting() async {}

  @override
  Future<bool> requestPermissions() async {
    final activityStatus = await Permission.activityRecognition.request();
    final sensorsStatus = await Permission.sensors.request();

    return activityStatus.isGranted && sensorsStatus.isGranted;
  }
}