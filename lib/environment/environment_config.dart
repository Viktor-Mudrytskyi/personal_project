import 'package:firebase_core/firebase_core.dart';
import '../dev_firebase_options.dart';
import '../prod_firebase_options.dart';

enum EnvironmentEnum {
  dev,
  prod,
}

class EnvironmentConfig {
  static const String _flavorKey = 'FLAVOR';

  static const String _prodName = 'prod';

  static const String _devName = 'dev';

  static bool get isDev => currentEnv == EnvironmentEnum.dev;

  static EnvironmentEnum get currentEnv {
    switch (const String.fromEnvironment(_flavorKey)) {
      case _prodName:
        return EnvironmentEnum.prod;
      case _devName:
        return EnvironmentEnum.dev;
      default:
        throw Exception('Invalid environment');
    }
  }

  static FirebaseOptions get firebaseOptions {
    switch (currentEnv) {
      case EnvironmentEnum.dev:
        return DevFirebaseOptions.currentPlatform;
      case EnvironmentEnum.prod:
        return ProdFirebaseOptions.currentPlatform;
    }
  }
}
