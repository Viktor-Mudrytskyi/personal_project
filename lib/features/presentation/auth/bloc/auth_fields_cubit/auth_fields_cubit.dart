import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/core.dart';
import '../../../../domain/domain.dart';

part 'auth_fields_state.dart';
part 'auth_fields_cubit.freezed.dart';

class AuthFieldsCubit extends Cubit<AuthFieldsState> {
  final AuthUseCase _authUseCase;

  AuthFieldsCubit({required AuthUseCase authUseCase})
      : _authUseCase = authUseCase,
        super(_empty);

  void onChangeEmail(String email) {
    emit(_stateNoFirebaseError.copyWith(
      email: email,
      emailError: AuthUtils.isEmailValid(email),
    ));
  }

  void onChangePassword(String password) {
    emit(_stateNoFirebaseError.copyWith(
      password: password,
      passwordError: AuthUtils.isPasswordValid(password),
    ));
  }

  Future<void> registerUserWithEmailAndPassword(
    String email,
    String password,
  ) async {
    if (_isEverythingValid()) {
      _emitLoading();
      final result = await _authUseCase.registerUserWEmailAndPassword(
        email: email,
        password: password,
      );
      result.fold(
        (l) {
          _emitFirebaseError(l.code);
        },
        (r) async {
          emit(_authSuccess);
          await _authUseCase.sendEmailVerification();
        },
      );
    } else {
      _enableValidation();
    }
  }

  Future<void> logInUserWithEmailAndPassword(
    String email,
    String password,
  ) async {
    if (_isEverythingValid()) {
      _emitLoading();
      final result = await _authUseCase.signInWEmailAndPassword(
        email: email,
        password: password,
      );

      result.fold(
        (l) {
          _emitFirebaseError(l.code);
        },
        (r) => emit(_authSuccess),
      );
    } else {
      _enableValidation();
    }
  }

  bool _isEverythingValid() {
    if (state.emailError == AuthErrorEnum.valid &&
        state.passwordError == AuthErrorEnum.valid) {
      return true;
    } else {
      return false;
    }
  }

  void _emitLoading() {
    emit(_stateNoFirebaseError.copyWith(
      isValidating: true,
    ));
  }

  void _enableValidation() {
    emit(_stateNoFirebaseError.copyWith(
      isValidating: false,
      validatingEnabled: true,
    ));
  }

  void _emitFirebaseError(String code) {
    emit(state.copyWith(
      isValidating: false,
      validatingEnabled: true,
      firebaseError: AuthUtils.parseFirebaseAuthErrors(code),
    ));
  }

  static AuthFieldsState get _empty => const AuthFieldsState(
        email: '',
        password: '',
        emailError: AuthErrorEnum.invalidEmail,
        passwordError: AuthErrorEnum.weakPassword,
        firebaseError: AuthErrorEnum.valid,
        isValidating: false,
        validatingEnabled: false,
      );
  AuthSuccessful get _authSuccess => AuthSuccessful(
        email: state.email,
        emailError: state.emailError,
        firebaseError: state.firebaseError,
        isValidating: state.isValidating,
        password: state.password,
        passwordError: state.passwordError,
        validatingEnabled: state.validatingEnabled,
      );
  AuthFieldsState get _stateNoFirebaseError =>
      state.copyWith(firebaseError: AuthErrorEnum.valid);
}
