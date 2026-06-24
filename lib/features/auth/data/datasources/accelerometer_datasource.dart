import 'dart:math';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../domain/entities/step_data.dart';

/// DataSource para acelerómetro
/// ANTES: EventChannel personalizado hacia código nativo Kotlin
/// AHORA: sensors_plus directamente (mismo plugin, sin capa nativa custom)
///
/// sensors_plus expone accelerometerEventStream() que ya es un broadcast stream
/// de SensorEvent con x, y, z en m/s².
/// Sobre esos datos crudos calculamos pasos y tipo de actividad en Dart.
abstract class AccelerometerDataSource {
  Stream<StepData> get stepStream;
  Future<void> startCounting();
  Future<void> stopCounting();
  Future<bool> requestPermissions();
}

class AccelerometerDataSourceImpl implements AccelerometerDataSource {
  int _stepCount = 0;
  DateTime? _lastStepTime;

  // Ajustado para Infinix Note 40 Pro
  static const double _stepThreshold = 14.5;
  static const Duration _stepCooldown = Duration(milliseconds: 400);

  /// Transforma el stream crudo de acelerómetro en StepData
  /// con conteo de pasos y clasificación de actividad.
  late final Stream<StepData> _stream = accelerometerEventStream().map((event) {
    final double magnitude = sqrt(
      event.x * event.x +
          event.y * event.y +
          event.z * event.z,
    );

    final now = DateTime.now();

    // Detectar paso por umbral de magnitud y cooldown
    if (magnitude > _stepThreshold) {
      if (_lastStepTime == null ||
          now.difference(_lastStepTime!) > _stepCooldown) {
        _stepCount++;
        _lastStepTime = now;
      }
    }

    // Clasificar actividad según magnitud
    final ActivityType type;

    if (magnitude < 11.0) {
      type = ActivityType.stationary;
    } else if (magnitude < 20.0) {
      type = ActivityType.walking;
    } else {
      type = ActivityType.running;
    }

    return StepData(
      stepCount: _stepCount,
      activityType: type,
      magnitude: magnitude,
    );
  }).asBroadcastStream();

  @override
  Stream<StepData> get stepStream => _stream;

  @override
  Future<void> startCounting() async {
    _stepCount = 0;
    _lastStepTime = null;
  }

  @override
  Future<void> stopCounting() async {
    // sensors_plus se cancela cancelando la suscripción al stream
  }

  @override
  Future<bool> requestPermissions() async {
    final activityStatus = await Permission.activityRecognition.request();
    final sensorsStatus = await Permission.sensors.request();

    return activityStatus.isGranted && sensorsStatus.isGranted;
  }
}