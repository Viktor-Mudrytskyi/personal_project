import 'package:bloc/bloc.dart';

import '../../../../../core/core.dart';
import '../../../../features.dart';

part 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  final AuthUseCase _authUseCase;
  ResetPasswordCubit({required AuthUseCase authUseCase})
      : _authUseCase = authUseCase,
        super(empty);

  void onChangeEmail(String email) {
    formState.emailValidator.update(email);
    emit(
      formState.copyWith(
        email: email,
      ),
    );
  }

  Future<void> sendResetPasswordEmail() async {
    if (_isEverythingValid()) {
      final oldFormState = formState;
      emit(DataSendingResetPasswordState(
        email: oldFormState.email,
        emailValidator: oldFormState.emailValidator,
        validatingEnabled: oldFormState.validatingEnabled,
      ));
      final result =
          await _authUseCase.sendForgotPasswordEmail(oldFormState.email);

      result.fold(
        (l) {
          emit(
            ErrorSendingResetPasswordState(
              errorMessage: FirebaseAuthExceptionParser().parse(l),
            ),
          );
          emit(oldFormState);
        },
        (r) {
          emit(SuccessResetPasswordState());
        },
      );
    } else {
      _enableValidation();
    }
  }

  void _enableValidation() {
    emit(
      formState.copyWith(
        validatingEnabled: true,
      ),
    );
  }

  bool _isEverythingValid() {
    return formState.emailValidator.isValid;
  }

  static ResetPasswordState get empty => FormResetPasswordState(
        email: '',
        emailValidator: EmailValidator(''),
        validatingEnabled: false,
      );

  FormResetPasswordState get formState => state.maybeMap(
        orElse: () => throw Exception('State is not form'),
        form: (form) => form,
      );
}
