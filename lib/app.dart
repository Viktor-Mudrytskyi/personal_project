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
        BlocProvider(
          create: (context) => injector<AppOptionsCubit>(),
        ),
        BlocProvider(
          create: (context) =>
              injector<UserBloc>()..add(const UserEvent.figureCurrentState()),
        ),
      ],

      ///This listener is here to trigger creation of [UserBloc]
      child: BlocListener<UserBloc, UserState>(
        listener: (context, state) {},
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig:
              _appRouter.config(navigatorObservers: () => [RouterObserver()]),
        ),
      ),
    );
  }
}
