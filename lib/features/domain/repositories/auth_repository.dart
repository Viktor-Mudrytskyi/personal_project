
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<UserCredential> registerUserWEmailAndPassword({
    required String email,
    required String password,
  });

  Future<UserCredential> signInWEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> logOut();
}
