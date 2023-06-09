import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  ///Throws [FirebaseAuthException] on error
  Future<UserCredential> registerUserWEmailAndPassword({
    required String email,
    required String password,
  });

  ///Throws [FirebaseAuthException] on error
  Future<UserCredential> signInWEmailAndPassword({
    required String email,
    required String password,
  });

  ///Throws [FirebaseAuthException] on error
  Future<void> logOut();

  bool get isLoggedIn;
}
