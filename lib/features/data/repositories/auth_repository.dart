import 'package:firebase_auth/firebase_auth.dart';
import 'package:personal_project/features/domain/domain.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth _firebaseAuth;
  const AuthRepositoryImpl({required FirebaseAuth firebaseAuth})
      : _firebaseAuth = firebaseAuth;
  @override
  Future<void> logOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  Future<UserCredential> registerUserWEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final userCredential=await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential;
    
  }

  @override
  Future<UserCredential> signInWEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final userCredential=await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential;
  }
}
