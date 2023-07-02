import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/core.dart';
import 'environment/environment.dart';

import 'app.dart';
import 'features/domain/domain.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _configureSystemUI();
  await initInjector();
  await Firebase.initializeApp(options: EnvironmentConfig.firebaseOptions);
  await _setUpAuth();

  log(EnvironmentConfig.currentEnv.name);

  runApp(const MainApp());
}

Future<void> _setUpAuth() async {
  await injector<AuthUseCase>().onAppInit();
}

Future<void> _configureSystemUI() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarContrastEnforced: true,
    ),
  );
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
      overlays: [SystemUiOverlay.top]);
}
