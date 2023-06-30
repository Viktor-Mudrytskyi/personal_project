import 'package:bloc/bloc.dart';
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

  void onChangeEmail(String email) {
    emit(_stateNoErrors.copyWith(
      email: email,
      emailError: AuthUtils.isEmailValid(email),
    ));
  }

  void onChangePassword(String password) {
    emit(_stateNoErrors.copyWith(
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

  Future<void> attemptFingerprint() async {
    _emitLoading();
    if (await _biometricsService.isDeviceSupported) {
      try {
        await _biometricsService.authenticateWithFingerPrint();
      } catch (_) {}
    } else {
      emit(_stateNoErrors.copyWith(
        biometricsError: AuthErrorEnum.fingerPrintNotSupported,
      ));
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
    emit(_stateNoErrors.copyWith(
      isValidating: true,
    ));
  }

  void _enableValidation() {
    emit(_stateNoErrors.copyWith(
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
        biometricsError: AuthErrorEnum.valid,
      );
  AuthSuccessful get _authSuccess => AuthSuccessful(
        email: state.email,
        emailError: state.emailError,
        firebaseError: state.firebaseError,
        isValidating: state.isValidating,
        password: state.password,
        passwordError: state.passwordError,
        validatingEnabled: state.validatingEnabled,
        biometricsError: state.biometricsError,
      );
  AuthFieldsState get _stateNoErrors => state.copyWith(
        firebaseError: AuthErrorEnum.valid,
        biometricsError: AuthErrorEnum.valid,
      );
}
