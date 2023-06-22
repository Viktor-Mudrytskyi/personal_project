import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/core.dart';
import '../../../../domain/domain.dart';

part 'auth_fields_state.dart';
part 'auth_fields_cubit.freezed.dart';

class AuthFieldsCubit extends Cubit<AuthFieldsState> {
  final AuthUseCase _authUseCase;
  static final emailRegExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  AuthFieldsCubit({required AuthUseCase authUseCase})
      : _authUseCase = authUseCase,
        super(const AuthFieldsState(
          email: '',
          password: '',
          emailError: AuthErrorEnum.invalidEmail,
          passwordError: AuthErrorEnum.weakPassword,
          isValidating: false,
          validatingEnabled: false,
        ));

  void onChangeEmail(String email) {
    emit((state as AuthFieldsNormalState).copyWith(
      email: email,
      emailError: _validateEmail(email),
    ));
  }

  void onChangePassword(String password) {
    emit((state as AuthFieldsNormalState).copyWith(
      password: password,
      passwordError: _validatePassword(password),
    ));
  }

  Future<void> registerUserWithEmailAndPassword(
    String email,
    String password,
  ) async {
    if (_isEverythingValid()) {
      emit((state as AuthFieldsNormalState).copyWith(isValidating: true));
      final result = await _authUseCase.registerUserWEmailAndPassword(
        email: email,
        password: password,
      );
      emit(
        result.fold(
          (l) {
            return (state as AuthFieldsNormalState).copyWith(
              isValidating: false,
              validatingEnabled: true,
            );
          },
          (r) => const AuthFieldsState.authSuccessful(),
        ),
      );
    } else {
      emit((state as AuthFieldsNormalState).copyWith(
        isValidating: false,
        validatingEnabled: true,
      ));
    }
  }

  Future<void> logInUserWithEmailAndPassword(
    String email,
    String password,
  ) async {
    if (_isEverythingValid()) {
      emit((state as AuthFieldsNormalState).copyWith(isValidating: true));
      final result = await _authUseCase.signInWEmailAndPassword(
        email: email,
        password: password,
      );
      await Future.delayed(const Duration(seconds: 1));
      emit(
        result.fold(
          (l) {
            return (state as AuthFieldsNormalState).copyWith(
              isValidating: false,
              validatingEnabled: true,
            );
          },
          (r) => const AuthFieldsState.authSuccessful(),
        ),
      );
    } else {
      emit((state as AuthFieldsNormalState).copyWith(
        isValidating: false,
        validatingEnabled: true,
      ));
    }
  }

  AuthErrorEnum _validateEmail(String email) {
    if (!emailRegExp.hasMatch(email)) {
      return AuthErrorEnum.invalidEmail;
    } else {
      return AuthErrorEnum.valid;
    }
  }

  AuthErrorEnum _validatePassword(String password) {
    if (password.length < 6) {
      return AuthErrorEnum.weakPassword;
    } else {
      return AuthErrorEnum.valid;
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

  // AuthErrorEnum _parseAuthErrors(String code) {
  //   switch (code) {
  //     case 'wrong-password':
  //       break;
  //     default:
  //   }
  // }
}
