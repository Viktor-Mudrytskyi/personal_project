import 'package:firebase_auth/firebase_auth.dart';

import '../../core.dart';

class FirebaseAuthExceptionParser
    implements BaseParser<String, FirebaseAuthException> {
  @override
  String parse(FirebaseAuthException param) {
    switch (param.code) {
      case 'wrong-password':
        return 'Wrong password';
      case 'invalid-email':
        return 'Invalid email';
      case 'user-disabled':
        return 'The user has been disabled';
      case 'user-not-found':
        return 'User not found';
      case 'email-already-in-use':
        return 'Email already in use';
      case 'operation-not-allowed':
        return 'You are not allowed to perform this operation';
      case 'weak-password':
        return 'Weak password';
      case 'auth/invalid-email':
        return 'Invalid email';
      // case 'auth/missing-android-pkg-name':
      //   return AuthErrorEnum.androidPackageMustBeProvided;
      // case 'auth/missing-continue-uri':
      //   return AuthErrorEnum.missingContinueUri;
      // case 'auth/missing-ios-bundle-id':
      //   return AuthErrorEnum.missingIosBundle;
      // case 'auth/invalid-continue-uri':
      //   return AuthErrorEnum.invalidContinueUri;
      // case 'auth/unauthorized-continue-uri':
      //   return AuthErrorEnum.unauthorizedContinueUri;
      case 'auth/user-not-found':
        return 'User not found';
      default:
        return 'Something went wrong...';
    }
  }
}
