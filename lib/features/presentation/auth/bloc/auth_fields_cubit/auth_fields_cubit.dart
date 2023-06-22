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
        super(const AuthFieldsState(
          email: '',
          password: '',
          emailError: AuthErrorEnum.invalidEmail,
          passwordError: AuthErrorEnum.weakPassword,
          firebaseError: AuthErrorEnum.valid,
          isValidating: false,
          validatingEnabled: false,
        ));

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
                firebaseError: AuthUtils.parseFirebaseAuthErrors(l.code));
          },
          (r) => const AuthFieldsState.authSuccessful(),
        ),
      );
    } else {
      emit((state as AuthFieldsNormalState).copyWith(
        isValidating: false,
        validatingEnabled: true,
        firebaseError: AuthErrorEnum.valid,
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
                firebaseError: AuthUtils.parseFirebaseAuthErrors(l.code));
          },
          (r) => const AuthFieldsState.authSuccessful(),
        ),
      );
    } else {
      emit((state as AuthFieldsNormalState).copyWith(
        isValidating: false,
        validatingEnabled: true,
        firebaseError: AuthErrorEnum.valid,
      ));
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
}
