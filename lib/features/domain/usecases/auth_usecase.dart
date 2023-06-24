import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../domain.dart';

abstract class AuthUseCase {
  ///Does not throw [Exception]. On success returns UserCredentials, on failure - [FirebaseAuthException]
  Future<Either<FirebaseAuthException, UserCredential>>
      registerUserWEmailAndPassword({
    required String email,
    required String password,
  });

  ///Does not throw [Exception]. On success returns UserCredentials, on failure - [FirebaseAuthException]
  Future<Either<FirebaseAuthException, UserCredential>>
      signInWEmailAndPassword({
    required String email,
    required String password,
  });

  ///Does not throw [Exception]. On success returns UserCredentials, on failure - [FirebaseAuthException]
  Future<Either<FirebaseAuthException, void>> logOut();

  ///Sends verification to user's email
  Future<void> sendEmailVerification();

  ///Sends email for password restoration
  Future<void> sendForgotPasswordEmail(String email);

  bool get isLoggedIn;

  User? get userInfo;

  ///Returns [false] if user is not logged in
  bool get isEmailVerified;
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

  @override
  bool get isLoggedIn => _authRepository.isLoggedIn;

  @override
  User? get userInfo => _authRepository.userInfo;

  @override
  bool get isEmailVerified => _authRepository.isEmailVerified;

  @override
  Future<void> sendEmailVerification() async {
    await _authRepository.sendEmailVerification();
  }

  @override
  Future<void> sendForgotPasswordEmail(String email) async {
    await _authRepository.sendForgotPasswordEmail(email);
  }
}
