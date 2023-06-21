import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../core.dart';
import '../../features/data/data.dart';
import '../../features/domain/domain.dart';

///Use this global variable for dependency injection throughout the app
final injector = GetIt.instance;

///Initializes [GetIt] [injector] variable
Future<void> initInjector() async {
  //Core
  injector.registerLazySingleton<ApiService>(() => ApiService());
  injector.registerLazySingleton<AppRouter>(() => AppRouter());
  injector.registerLazySingleton<Logger>(() => Logger());
  injector.registerLazySingleton<AppBlocObserver>(() => AppBlocObserver());

  //Repositories
  injector.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(firebaseAuth: FirebaseAuth.instance));

  //UseCases
  injector.registerLazySingleton<AuthUseCase>(
      () => AuthUseCaseImpl(authRepository: injector<AuthRepository>()));

  //Routing
  injector.registerLazySingleton<AuthGuard>(
    () => AuthGuard(authUseCase: injector()),
  );

  injector.registerLazySingleton<RouterObserver>(
    () => RouterObserver(),
  );

  //Bloc
  injector.registerFactory<AppOptionsCubit>(() => AppOptionsCubit());
  injector.registerFactory<UserBloc>(() => UserBloc(authUseCase: injector()));
}
