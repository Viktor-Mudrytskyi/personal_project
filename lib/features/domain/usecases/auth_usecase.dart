import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../domain.dart';

abstract class AuthUseCase {
  Future<Either<FirebaseAuthException, UserCredential>>
      registerUserWEmailAndPassword({
    required String email,
    required String password,
  });
  Future<Either<FirebaseAuthException, UserCredential>>
      signInWEmailAndPassword({
    required String email,
    required String password,
  });
  Future<Either<FirebaseAuthException, void>> logOut();
}

class AuthUseCaseImpl implements AuthUseCase {
  final AuthRepository _authRepository;
  const AuthUseCaseImpl({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;
  @override
  Future<Either<FirebaseAuthException, void>> logOut() async {
    try {
      await _authRepository.logOut();
      return const Right(null);
    } on FirebaseAuthException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<FirebaseAuthException, UserCredential>>
      registerUserWEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential =
          await _authRepository.registerUserWEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(userCredential);
    } on FirebaseAuthException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<FirebaseAuthException, UserCredential>>
      signInWEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _authRepository.signInWEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(userCredential);
    } on FirebaseAuthException catch (e) {
      return Left(e);
    }
  }
}
