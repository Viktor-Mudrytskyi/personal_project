import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

import '../core.dart';
import '../../features/data/data.dart';
import '../../features/domain/domain.dart';

///Use this global variable for dependency injection throughout the app
final injector = GetIt.instance;
Future<void> initInjector() async {
  //Core
  injector.registerLazySingleton<ApiService>(() => ApiService());

  //Repositories
  injector.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(firebaseAuth: FirebaseAuth.instance));

  //UseCases
  injector.registerLazySingleton<AuthUseCase>(
      () => AuthUseCaseImpl(authRepository: injector<AuthRepository>()));

  //Presentaton(Bloc)

  injector.registerFactory<AppOptionsCubit>(() => AppOptionsCubit());
}
