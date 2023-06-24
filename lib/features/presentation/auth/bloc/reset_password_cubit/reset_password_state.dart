part of 'reset_password_cubit.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState({
    required String email,
    required bool isValidating,
    required bool validatingEnabled,
    required AuthErrorEnum emailError,
    required AuthErrorEnum firebaseError,
  }) = MyResetPasswordState;

  const factory ResetPasswordState.success({
    required String email,
    required bool isValidating,
    required bool validatingEnabled,
    required AuthErrorEnum emailError,
  }) = ResetPasswordSuccessState;
}
