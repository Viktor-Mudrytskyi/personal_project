import 'package:flutter/material.dart';
import 'core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  static final _appRouter = injector<AppRouter>();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => injector<UserBloc>(),
        ),
        BlocProvider(
          create: (context) => injector<AppOptionsCubit>(),
        ),
      ],
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, userState) {
          return BlocBuilder<AppOptionsCubit, AppOptionsState>(
            builder: (context, state) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                routerConfig: _appRouter.config(),
              );
            },
          );
        },
      ),
    );
  }
}
