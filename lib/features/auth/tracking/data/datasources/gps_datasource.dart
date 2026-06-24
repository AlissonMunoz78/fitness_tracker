import 'package:geolocator/geolocator.dart';
import '../../domain/entities/location_point.dart';

/// DataSource para GPS
/// ANTES: MethodChannel + EventChannel custom hacia Kotlin
/// AHORA: Plugin geolocator (maneja permisos, settings y stream automáticamente)
abstract class GpsDataSource {
  Future<LocationPoint?> getCurrentLocation();
  Stream<LocationPoint> get locationStream;
  Future<bool> isGpsEnabled();
  Future<bool> requestPermissions();
  Future<bool> openLocationSettings();
}

class GpsDataSourceImpl implements GpsDataSource {
  /// Configuración del stream de posición
  static const LocationSettings _locationSettings = LocationSettings(
    accuracy: LocationAccuracy.high,
    distanceFilter: 2, // Actualizar cada 2 metros de movimiento
  );

  late final Stream<LocationPoint> _sharedStream = Geolocator
      .getPositionStream(locationSettings: _locationSettings)
      .map(_positionToPoint)
      .asBroadcastStream();

  @override
  Stream<LocationPoint> get locationStream => _sharedStream;

  @override
  Future<LocationPoint?> getCurrentLocation() async {
    try {
      final position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
        ),
      );
      return _positionToPoint(position);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool> isGpsEnabled() async {
    return await Geolocator.isLocationServiceEnabled();
  }

  @override
  Future<bool> openLocationSettings() async {
    return await Geolocator.openLocationSettings();
  }

  @override
  Future<bool> requestPermissions() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.deniedForever) {
      await Geolocator.openAppSettings();
      return false;
    }

    return permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse;
  }

  /// Convierte Position de geolocator a nuestra entidad LocationPoint
  LocationPoint _positionToPoint(Position position) {
    return LocationPoint(
      latitude: position.latitude,
      longitude: position.longitude,
      altitude: position.altitude,
      speed: position.speed,
      accuracy: position.accuracy,
      timestamp: position.timestamp,
    );
  }
}