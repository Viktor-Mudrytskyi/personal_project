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
        super(empty);

  void onChangeEmail(String email) {
    emit((state as AuthFieldsNormalState).copyWith(
      email: email,
      emailError: AuthUtils.isEmailValid(email),
      firebaseError: AuthErrorEnum.valid,
    ));
  }

  void onChangePassword(String password) {
    emit((state as AuthFieldsNormalState).copyWith(
      password: password,
      passwordError: AuthUtils.isPasswordValid(password),
      firebaseError: AuthErrorEnum.valid,
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
          emit(const AuthFieldsState.authSuccessful());
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
        (r) => emit(const AuthFieldsState.authSuccessful()),
      );
    } else {
      _enableValidation();
    }
  }

  bool _isEverythingValid() {
    final currentState = (state as AuthFieldsNormalState);
    if (currentState.emailError == AuthErrorEnum.valid &&
        currentState.passwordError == AuthErrorEnum.valid) {
      return true;
    } else {
      return false;
    }
  }

  void _emitLoading() {
    emit((state as AuthFieldsNormalState).copyWith(
      isValidating: true,
      firebaseError: AuthErrorEnum.valid,
    ));
  }

  void _enableValidation() {
    emit((state as AuthFieldsNormalState).copyWith(
      isValidating: false,
      validatingEnabled: true,
      firebaseError: AuthErrorEnum.valid,
    ));
  }

  void _emitFirebaseError(String code) {
    emit((state as AuthFieldsNormalState).copyWith(
      isValidating: false,
      validatingEnabled: true,
      firebaseError: AuthUtils.parseFirebaseAuthErrors(code),
    ));
  }

  static AuthFieldsState get empty => const AuthFieldsState(
        email: '',
        password: '',
        emailError: AuthErrorEnum.invalidEmail,
        passwordError: AuthErrorEnum.weakPassword,
        firebaseError: AuthErrorEnum.valid,
        isValidating: false,
        validatingEnabled: false,
      );
}
