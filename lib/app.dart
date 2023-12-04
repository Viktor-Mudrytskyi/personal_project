import 'package:flutter/material.dart';
import 'package:secure_application/secure_application.dart';
import 'core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    ///Initialize bloc observer
    Bloc.observer = injector<AppBlocObserver>();
    super.initState();
  }

  static final _appRouter = injector<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => injector<AppOptionsCubit>(),
        ),
        BlocProvider(
          create: (context) => injector<UserBloc>()..add(OnInitUserEvent()),
        ),
      ],
      child: BlocListener<UserBloc, UserState>(
        listener: (context, state) {},
        listenWhen: (_, __) => false,
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: _appRouter.config(
            navigatorObservers: () => [RouterObserver()],
          ),
          builder: (context, child) {
            return SecureApplication(
              nativeRemoveDelay: 800,
              child: child!,
            );
          },
        ),
      ),
    );
  }
}
