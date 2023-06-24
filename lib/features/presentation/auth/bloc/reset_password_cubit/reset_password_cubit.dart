import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/core.dart';
import '../../../../features.dart';

part 'reset_password_state.dart';
part 'reset_password_cubit.freezed.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  final AuthUseCase _authUseCase;
  ResetPasswordCubit({required AuthUseCase authUseCase})
      : _authUseCase = authUseCase,
        super(empty);

  void onChangeEmail(String email) {
    emit((state as MyResetPasswordState).copyWith(
      email: email,
      emailError: AuthUtils.isEmailValid(email),
      firebaseError: AuthErrorEnum.valid,
    ));
  }

  Future<void> sendResetPasswordEmail(
    String email,
  ) async {
    if (_isEverythingValid()) {
      _emitLoading();
      final result = await _authUseCase.sendForgotPasswordEmail(email);

      result.fold((l) {
        _emitFirebaseError(l.code);
      }, (r) {
        emit(ResetPasswordState.success(
            email: state.email,
            emailError: state.emailError,
            isValidating: state.isValidating,
            validatingEnabled: state.validatingEnabled));
      });
    } else {
      _enableValidation();
    }
  }

  void _emitLoading() {
    emit((state as MyResetPasswordState).copyWith(
      isValidating: true,
      firebaseError: AuthErrorEnum.valid,
    ));
  }

  void _enableValidation() {
    emit((state as MyResetPasswordState).copyWith(
      isValidating: false,
      validatingEnabled: true,
      firebaseError: AuthErrorEnum.valid,
    ));
  }

  void _emitFirebaseError(String code) {
    emit((state as MyResetPasswordState).copyWith(
      isValidating: false,
      validatingEnabled: true,
      firebaseError: AuthUtils.parseFirebaseAuthErrors(code),
    ));
  }

  bool _isEverythingValid() {
    if ((state as MyResetPasswordState).emailError == AuthErrorEnum.valid) {
      return true;
    } else {
      return false;
    }
  }

  static ResetPasswordState get empty => const ResetPasswordState(
        email: '',
        emailError: AuthErrorEnum.invalidEmail,
        firebaseError: AuthErrorEnum.valid,
        isValidating: false,
        validatingEnabled: false,
      );
}
