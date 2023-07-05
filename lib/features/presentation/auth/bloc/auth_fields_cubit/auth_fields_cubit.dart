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
  final PreferncesService _preferences;

  AuthFieldsCubit({
    required AuthUseCase authUseCase,
    required BiometricsService biometricsService,
    required PreferncesService preferences,
  })  : _authUseCase = authUseCase,
        _biometricsService = biometricsService,
        _preferences = preferences,
        super(_empty);

  void onChangeEmail(String email) {
    emit(state.copyWith(
      email: email,
      emailError: AuthUtils.isEmailValid(email),
    ));
  }

  void onChangePassword(String password) {
    emit(state.copyWith(
      password: password,
      passwordError: AuthUtils.isPasswordValid(password),
    ));
  }

  void onRememberMeChange(bool value) {
    emit(state.copyWith(
      isRememberMe: value,
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
          _endLoading();
          emit(state.copyWith(
            firebaseError: AuthUtils.parseFirebaseAuthErrors(l.code),
          ));
          _removeErrors();
        },
        (r) async {
          _setDataInPrefs();
          _endLoading();

          emit(state.copyWith(isAuthSuccessful: true));
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
    if (_isLoginPasswordValid()) {
      _emitLoading();
      final result = await _authUseCase.signInWEmailAndPassword(
        email: email,
        password: password,
      );

      result.fold(
        (l) {
          _endLoading();

          //This is here for occasion when user resets password and logins
          //via fingerprint
          if (password == _authUseCase.getPasswordFromPrefs) {
            emit(state.copyWith(
              firebaseError: AuthErrorEnum.passwordMayHaveBeenChanged,
            ));
          } else {
            emit(state.copyWith(
              firebaseError: AuthUtils.parseFirebaseAuthErrors(l.code),
            ));
          }

          _removeErrors();
        },
        (r) async {
          _setDataInPrefs();
          _endLoading();

          emit(state.copyWith(isAuthSuccessful: true));
        },
      );
    } else {
      _enableValidation();
    }
  }

  Future<void> attemptFingerprint() async {
    if (await _biometricsService.canCheckFingerPrint) {
      if (_authUseCase.isAuthDataInPreferences) {
        _emitLoading();

        try {
          final result = await _biometricsService.authenticateWithFingerPrint();
          if (result) {
            final login = _authUseCase.getLoginFromPrefs;
            final password = _authUseCase.getPasswordFromPrefs;
            onChangeEmail(login);
            onChangePassword(password);
            await logInUserWithEmailAndPassword(login, password);
          } else {
            _endLoading();
          }
        } on PlatformException catch (_) {
          _endLoading();
          emit(state.copyWith(
            biometricsError: AuthErrorEnum.fingerPrintError,
          ));
          _removeErrors();
        }
      } else {
        emit(state.copyWith(
          biometricsError: AuthErrorEnum.firstLoginFingerprint,
        ));
        _removeErrors();
      }
    } else {
      emit(state.copyWith(
        biometricsError: AuthErrorEnum.fingerPrintNotSupported,
      ));
      _removeErrors();
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
    emit(state.copyWith(isCurrentlyValidating: true));
  }

  void _endLoading() {
    emit(state.copyWith(isCurrentlyValidating: false));
  }

  void _enableValidation() {
    emit(state.copyWith(isValidatingEnabled: true));
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

  Future<void> _setDataInPrefs() async {
    await _preferences.setLogin(state.email);
    await _preferences.setPassword(state.password);
    await _preferences.setIsRememberMe(state.isRememberMe);
  }

  static AuthFieldsState get _empty => const AuthFieldsState(
        email: '',
        password: '',
        emailError: AuthErrorEnum.invalidEmail,
        passwordError: AuthErrorEnum.weakPassword,
        firebaseError: AuthErrorEnum.valid,
        biometricsError: AuthErrorEnum.valid,
        isRememberMe: false,
        isAuthSuccessful: false,
        isCurrentlyValidating: false,
        isValidatingEnabled: false,
      );
}
