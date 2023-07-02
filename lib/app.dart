import 'package:flutter/material.dart';
import 'core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  static final _appRouter = injector<AppRouter>();
  @override
  Widget build(BuildContext context) {
    ///Initialize bloc observer
    Bloc.observer = injector<AppBlocObserver>();

    return MultiBlocProvider(
      providers: [
        ///Evidently, it will only initialize when it first encounters a listener for its state.
        ///Therefore, in this case, when routing to login screen it wont initialize, not until it gets to
        ///home screen
        BlocProvider(
          create: (context) =>
              injector<UserBloc>()..add(const UserEvent.figureCurrentState()),
        ),
        BlocProvider(
          create: (context) => injector<AppOptionsCubit>(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig:
            _appRouter.config(navigatorObservers: () => [RouterObserver()]),
      ),
    );
  }
}
