import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:personal_project/core/core.dart';
import 'package:personal_project/dev_firebase_options.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async {
    await initInjector();

    await Firebase.initializeApp(options: DevFirebaseOptions.currentPlatform);
  });
}
