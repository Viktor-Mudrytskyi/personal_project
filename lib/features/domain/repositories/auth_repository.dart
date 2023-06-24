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

  ///Sends verification to user's email
  Future<void> sendEmailVerification();

  ///Sends email for password restoration
  Future<void> sendForgotPasswordEmail(String email);

  bool get isLoggedIn;

  ///Returns [false] if user is not logged in
  bool get isEmailVerified;

  ///Returns null if not logged in
  User? get userInfo;
}
