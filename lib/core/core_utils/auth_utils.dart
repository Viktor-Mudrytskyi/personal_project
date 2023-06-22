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
      default:
        return AuthErrorEnum.valid;
    }
  }
}
