import 'package:flutter/material.dart';
import 'package:personal_project/core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/presentation/presentation.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector<AppOptionsCubit>(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
      ),
    );
  }
}
