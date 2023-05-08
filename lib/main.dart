import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:personal_project/core/core.dart';
import 'package:personal_project/environment/environment.dart';

import 'app.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await initInjector();
  await Firebase.initializeApp(options: EnvironmentConfig.firebaseOptions);
  log(const String.fromEnvironment('FLAVOR'));
  runApp(const MainApp());
}

