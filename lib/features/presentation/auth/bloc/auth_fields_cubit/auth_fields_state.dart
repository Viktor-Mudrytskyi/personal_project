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

    ///Is true when user clicked on login/register
    ///and prevents user from clicking on them again and changing text fields
    required bool isValidating,

    ///Is true after user clicked on login/register
    required bool validatingEnabled,
  }) = AuthFieldsNormalState;

  const factory AuthFieldsState.authSuccessful({
    required String email,
    required String password,
    required AuthErrorEnum emailError,
    required AuthErrorEnum passwordError,
    required AuthErrorEnum firebaseError,
    required AuthErrorEnum biometricsError,

    ///Is true when user clicked on login/register
    ///and prevents user from clicking on them again and changing text fields
    required bool isValidating,

    ///Is true after user clicked on login/register
    required bool validatingEnabled,
  }) = AuthSuccessful;
}
