import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:local_auth/local_auth.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/features.dart';
import '../core.dart';

///Use this global variable for dependency injection throughout the app
final injector = GetIt.instance;

///Initializes [GetIt] [injector] variable
Future<void> initInjector() async {
  //Preferences
  final pref = await SharedPreferences.getInstance();
  injector.registerLazySingleton<SharedPreferences>(() => pref);

  //Core
  injector.registerLazySingleton<ApiService>(() => ApiService());
  injector.registerLazySingleton<AppRouter>(() => AppRouter());
  injector.registerLazySingleton<Logger>(() => Logger());
  injector.registerLazySingleton<AppBlocObserver>(() => AppBlocObserver());
  injector.registerLazySingleton<BiometricsService>(
      () => BiometricsService(localAuthentication: LocalAuthentication()));
  injector.registerLazySingleton<PreferncesService>(
      () => PreferncesService(prefs: injector()));

  //Repositories
  injector.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(firebaseAuth: FirebaseAuth.instance));

  //UseCases
  injector.registerLazySingleton<AuthUseCase>(() => AuthUseCaseImpl(
        authRepository: injector<AuthRepository>(),
        preferncesService: injector(),
      ));

  //Routing
  injector.registerLazySingleton<AuthGuard>(
    () => AuthGuard(authUseCase: injector()),
  );

  injector.registerLazySingleton<RouterObserver>(
    () => RouterObserver(),
  );

  //Bloc
  injector.registerFactory<AppOptionsCubit>(() => AppOptionsCubit());
  injector.registerFactory<UserBloc>(() => UserBloc(
        authUseCase: injector(),
        preferncesService: injector(),
      ));
  injector.registerFactory<AuthFieldsCubit>(() => AuthFieldsCubit(
        authUseCase: injector(),
        biometricsService: injector(),
        preferences: injector(),
      ));
  injector.registerFactory<ResetPasswordCubit>(
      () => ResetPasswordCubit(authUseCase: injector()));
}
