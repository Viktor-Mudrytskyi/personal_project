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
          create: (context) =>
              injector<UserBloc>()..add(const UserEvent.init()),
        ),
        BlocProvider(
          create: (context) => injector<AppOptionsCubit>(),
        ),
      ],

      ///This empty listener is here because, for some reason, UserBloc is not initialized
      ///unless it encounters builder/listener etc, this seems to have fixed this.
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
