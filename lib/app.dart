import 'package:flutter/material.dart';
import 'core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/presentation/presentation.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector<AppOptionsCubit>(),
      child: BlocBuilder<AppOptionsCubit, AppOptionsState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              inputDecorationTheme: state.appTheme.inputDecorationTheme,
              checkboxTheme: state.appTheme.checkboxTheme,
              colorScheme: state.appTheme.colorScheme,
            ),
            home: const LoginScreen(),
          );
        },
      ),
    );
  }
}
