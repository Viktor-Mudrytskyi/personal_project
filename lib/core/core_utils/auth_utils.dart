import '../core.dart';

class AuthUtils {
  static final emailRegExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  static AuthErrorEnum isEmailValid(String email) {
    if (!emailRegExp.hasMatch(email)) {
      return AuthErrorEnum.invalidEmail;
    } else {
      return AuthErrorEnum.valid;
    }
  }

  static AuthErrorEnum isPasswordValid(String password) {
    if (password.length < 6) {
      return AuthErrorEnum.weakPassword;
    } else {
      return AuthErrorEnum.valid;
    }
  }

  static AuthErrorEnum parseFirebaseAuthErrors(String code) {
    switch (code) {
      case 'wrong-password':
        return AuthErrorEnum.wrongPassword;
      case 'invalid-email':
        return AuthErrorEnum.invalidEmail;
      case 'user-disabled':
        return AuthErrorEnum.userDisabled;
      case 'user-not-found':
        return AuthErrorEnum.userNotFound;
      case 'email-already-in-use':
        return AuthErrorEnum.invalidEmail;
      case 'operation-not-allowed':
        return AuthErrorEnum.invalidEmail;
      case 'weak-password':
        return AuthErrorEnum.invalidEmail;
      case 'auth/invalid-email':
        return AuthErrorEnum.invalidEmail;
      case 'auth/missing-android-pkg-name':
        return AuthErrorEnum.androidPackageMustBeProvided;
      case 'auth/missing-continue-uri':
        return AuthErrorEnum.missingContinueUri;
      case 'auth/missing-ios-bundle-id':
        return AuthErrorEnum.missingIosBundle;
      case 'auth/invalid-continue-uri':
        return AuthErrorEnum.invalidContinueUri;
      case 'auth/unauthorized-continue-uri':
        return AuthErrorEnum.unauthorizedContinueUri;
      case 'auth/user-not-found':
        return AuthErrorEnum.userNotFound;
      default:
        return AuthErrorEnum.valid;
    }
  }

  static String? parseAuthErrors(AuthErrorEnum error) {
    switch (error) {
      case AuthErrorEnum.invalidEmail:
        return 'Invalid email';
      case AuthErrorEnum.weakPassword:
        return 'Password is too weak';
      case AuthErrorEnum.valid:
        return '';
      default:
        return 'Unknown error occured';
    }
  }
}
