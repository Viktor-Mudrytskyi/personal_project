import 'package:firebase_auth/firebase_auth.dart';
import 'package:personal_project/features/domain/domain.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<void> logOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Future<void> registerUserWEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> signInWEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
