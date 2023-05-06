import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<Either<FirebaseAuthException, void>> registerUserWEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Either<FirebaseAuthException, void>> signInWEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Either<FirebaseAuthException, void>> logOut();
}
