import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../core/core.dart';
import '../domain.dart';

class AuthUseCase {
  final AuthRepository _authRepository;
  const AuthUseCase({
    required AuthRepository authRepository,
    required PreferncesService preferncesService,
  }) : _authRepository = authRepository;

  Future<Either<FirebaseAuthException, void>> logOut() async {
    try {
      await _authRepository.logOut();
      return const Right(null);
    } on FirebaseAuthException catch (e) {
      return Left(e);
    }
  }

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

  bool get isLoggedIn => _authRepository.isLoggedIn;

  User? get userInfo => _authRepository.userInfo;

  bool get isEmailVerified => _authRepository.isEmailVerified;

  Future<void> sendEmailVerification() async {
    await _authRepository.sendEmailVerification();
  }

  Future<Either<FirebaseAuthException, void>> sendForgotPasswordEmail(
      String email) async {
    try {
      await _authRepository.sendForgotPasswordEmail(email);
      return const Right(null);
    } on FirebaseAuthException catch (e) {
      return Left(e);
    }
  }
}
