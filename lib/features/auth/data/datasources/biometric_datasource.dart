import 'package:local_auth/local_auth.dart';
import '../../domain/entities/auth_result.dart';

/// DataSource para autenticación biométrica
/// ANTES: MethodChannel manual hacia Android nativo
/// AHORA: Plugin local_auth (maneja iOS y Android automáticamente)
abstract class BiometricDataSource {
  Future<bool> canAuthenticate();
  Future<AuthResult> authenticate();
}

class BiometricDataSourceImpl implements BiometricDataSource {
  /// local_auth abstrae toda la comunicación con la plataforma
  final LocalAuthentication _auth = LocalAuthentication();

  @override
  Future<bool> canAuthenticate() async {
    try {
      // Verifica si el dispositivo soporta biometría
      final bool canAuthenticateWithBiometrics = await _auth.canCheckBiometrics;
      final bool canAuthenticate = await _auth.isDeviceSupported();
      return canAuthenticateWithBiometrics && canAuthenticate;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<AuthResult> authenticate() async {
    try {
      final bool didAuthenticate = await _auth.authenticate(
        localizedReason: 'Autentícate para acceder a Fitness Tracker',
        options: const AuthenticationOptions(
          biometricOnly: false, // Permite PIN como fallback
          stickyAuth: true,     // Mantiene el diálogo si el usuario cambia de app
        ),
      );

      return AuthResult(
        success: didAuthenticate,
        message: didAuthenticate
            ? 'Autenticación exitosa'
            : 'Autenticación cancelada',
      );
    } catch (e) {
      return AuthResult(
        success: false,
        message: 'Error de autenticación: $e',
      );
    }
  }
}