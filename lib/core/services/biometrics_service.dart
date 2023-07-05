import 'package:local_auth/local_auth.dart';

class BiometricsService {
  final LocalAuthentication _localAuthentication;
  const BiometricsService({required LocalAuthentication localAuthentication})
      : _localAuthentication = localAuthentication;

  Future<List<BiometricType>> get getAvailableBiometrics async =>
      await _localAuthentication.getAvailableBiometrics();

  Future<bool> get canCheckFingerPrint async =>
      await _localAuthentication.canCheckBiometrics;

  ///To check whether there is local authentication available on this device or not,
  ///call canCheckBiometrics (if you need biometrics support)
  Future<bool> get isFingerPrintEnrolled async =>
      (await getAvailableBiometrics).contains(BiometricType.fingerprint);

  ///if you just need some device-level authentication)
  Future<bool> get isDeviceSupported async =>
      await _localAuthentication.isDeviceSupported();

  Future<bool> authenticateWithFingerPrint() async {
    return await _localAuthentication.authenticate(
      localizedReason: ' ',
      options: const AuthenticationOptions(
        biometricOnly: true,
        stickyAuth: true,
      ),
    );
  }
}
