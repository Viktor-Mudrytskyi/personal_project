part of 'auth_fields_cubit.dart';

@freezed
class AuthFieldsState with _$AuthFieldsState {
  const factory AuthFieldsState({
    required String email,
    required String password,
    required AuthErrorEnum emailError,
    required AuthErrorEnum passwordError,
    required AuthErrorEnum firebaseError,
    required AuthErrorEnum biometricsError,
    required bool isRememberMe,
  }) = _AuthFieldsNormalState;

  const factory AuthFieldsState.authSuccessful({
    required String email,
    required String password,
    required AuthErrorEnum emailError,
    required AuthErrorEnum passwordError,
    required AuthErrorEnum firebaseError,
    required AuthErrorEnum biometricsError,
    required bool isRememberMe,
  }) = _AuthSuccessful;
}
