import 'package:local_auth/local_auth.dart';

class BiometricsService {
  final LocalAuthentication _localAuthentication;
  const BiometricsService({required LocalAuthentication localAuthentication})
      : _localAuthentication = localAuthentication;

  Future<List<BiometricType>> get getAvailableBiometrics async =>
      await _localAuthentication.getAvailableBiometrics();

  Future<bool> get canUseFingerprint async =>
      (await getAvailableBiometrics).contains(BiometricType.fingerprint);

  Future<bool> get isDeviceSupported async =>
      await _localAuthentication.isDeviceSupported();

  Future<bool> get canCheckBiometrics async =>
      await _localAuthentication.canCheckBiometrics;

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
