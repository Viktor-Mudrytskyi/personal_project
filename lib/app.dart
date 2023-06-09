import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/features.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  static final _appRouter = injector<AppRouter>();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              injector<UserBloc>()..add(const UserEvent.init()),
        ),
        BlocProvider(
          create: (context) => injector<AppOptionsCubit>(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: _appRouter.config(),
      ),
    );
  }
}

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return state.map(
            authenticated: (state) => const HomeScreen(),
            unuthenticated: (state) => const LoginScreen(),
            loading: (state) => const LoadingSpinner(),
            error: (state) => const Center(
              child: Icon(
                Icons.no_adult_content_sharp,
                size: 40,
              ),
            ),
          );
        },
      ),
    );
  }
}
