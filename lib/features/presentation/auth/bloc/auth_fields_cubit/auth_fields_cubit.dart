import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/core.dart';
import '../../../../domain/domain.dart';

part 'auth_fields_state.dart';
part 'auth_fields_cubit.freezed.dart';

class AuthFieldsCubit extends Cubit<AuthFieldsState> {
  final AuthUseCase _authUseCase;
  final BiometricsService _biometricsService;

  AuthFieldsCubit({
    required AuthUseCase authUseCase,
    required BiometricsService biometricsService,
  })  : _authUseCase = authUseCase,
        _biometricsService = biometricsService,
        super(_empty);

  bool _isValidatingEnabled = false;

  bool _isCurrentlyValidating = false;

  ///Whether error is shown below text fields
  bool get isValidatingEnabled => _isValidatingEnabled;

  ///Whether user clicked on login/register etc, in other words whether some async
  ///check is happening
  bool get isCurrentlyValidating => _isCurrentlyValidating;

  void onChangeEmail(String email) {
    _removeErrors();
    emit(state.copyWith(
      email: email,
      emailError: AuthUtils.isEmailValid(email),
    ));
  }

  void onChangePassword(String password) {
    _removeErrors();
    emit(state.copyWith(
      password: password,
      passwordError: AuthUtils.isPasswordValid(password),
    ));
  }

  Future<void> registerUserWithEmailAndPassword(
    String email,
    String password,
  ) async {
    if (_isLoginPasswordValid()) {
      _emitLoading();

      final result = await _authUseCase.registerUserWEmailAndPassword(
        email: email,
        password: password,
      );

      result.fold(
        (l) {
          _removeErrors();
          _endLoading();
          emit(state.copyWith(
            firebaseError: AuthUtils.parseFirebaseAuthErrors(l.code),
          ));
        },
        (r) async {
          _removeErrors();
          _endLoading();
          emit(_authSuccess);
          await _authUseCase.sendEmailVerification();
        },
      );
    } else {
      _removeErrors();
      _enableValidation();
    }
  }

  Future<void> logInUserWithEmailAndPassword(
    String email,
    String password,
  ) async {
    if (_isLoginPasswordValid()) {
      _emitLoading();
      final result = await _authUseCase.signInWEmailAndPassword(
        email: email,
        password: password,
      );

      result.fold(
        (l) {
          _removeErrors();
          _endLoading();
          emit(state.copyWith(
            firebaseError: AuthUtils.parseFirebaseAuthErrors(l.code),
          ));
        },
        (r) {
          _removeErrors();
          _endLoading();
          emit(_authSuccess);
        },
      );
    } else {
      _removeErrors();
      _enableValidation();
    }
  }

  Future<void> attemptFingerprint() async {
    _emitLoading();

    try {
      final result = await _biometricsService.authenticateWithFingerPrint();
      if (result) {
        _removeErrors();
        _endLoading();
        emit(_authSuccess);
      } else {
        _removeErrors();
        _endLoading();
      }
    } on PlatformException catch (e) {
      _removeErrors();
      _endLoading();
      print(e.message);
      emit(state.copyWith(
          biometricsError: AuthErrorEnum.fingerPrintNotSupported));
    }
  }

  bool _isLoginPasswordValid() {
    if (state.emailError == AuthErrorEnum.valid &&
        state.passwordError == AuthErrorEnum.valid) {
      return true;
    } else {
      return false;
    }
  }

  void _emitLoading() {
    _isCurrentlyValidating = true;
  }

  void _endLoading() {
    _isCurrentlyValidating = false;
  }

  void _enableValidation() {
    if (!isValidatingEnabled) {
      _isValidatingEnabled = true;
    }
  }

  ///if state contains any error that is shown on snack bar,
  ///changes them to [AuthErrorEnum.valid]
  void _removeErrors() {
    if (state.biometricsError != AuthErrorEnum.valid ||
        state.firebaseError != AuthErrorEnum.valid) {
      emit(state.copyWith(
        biometricsError: AuthErrorEnum.valid,
        firebaseError: AuthErrorEnum.valid,
      ));
    }
  }

  // void _emitFirebaseError(String code) {
  // emit(state.copyWith(
  //   isValidating: false,
  //   validatingEnabled: true,
  //   firebaseError: AuthUtils.parseFirebaseAuthErrors(code),
  // ));
  // }

  static AuthFieldsState get _empty => const AuthFieldsState(
        email: '',
        password: '',
        emailError: AuthErrorEnum.invalidEmail,
        passwordError: AuthErrorEnum.weakPassword,
        firebaseError: AuthErrorEnum.valid,
        biometricsError: AuthErrorEnum.valid,
      );
  AuthSuccessful get _authSuccess => AuthSuccessful(
        email: state.email,
        emailError: state.emailError,
        firebaseError: state.firebaseError,
        password: state.password,
        passwordError: state.passwordError,
        biometricsError: state.biometricsError,
      );
}
