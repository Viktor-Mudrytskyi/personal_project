part of 'reset_password_cubit.dart';

sealed class ResetPasswordState {
  T map<T>({
    required T Function(FormResetPasswordState form) form,
    required T Function(SuccessResetPasswordState success) success,
    required T Function(DataSendingResetPasswordState dataSending) dataSending,
    required T Function(ErrorSendingResetPasswordState errorSending)
        errorSending,
  }) {
    return switch (this) {
      FormResetPasswordState() => form(this as FormResetPasswordState),
      SuccessResetPasswordState() => success(this as SuccessResetPasswordState),
      DataSendingResetPasswordState() =>
        dataSending(this as DataSendingResetPasswordState),
      ErrorSendingResetPasswordState() =>
        errorSending(this as ErrorSendingResetPasswordState),
    };
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function(FormResetPasswordState form)? form,
    T Function(SuccessResetPasswordState success)? success,
    T Function(DataSendingResetPasswordState dataSending)? dataSending,
    T Function(ErrorSendingResetPasswordState errorSending)? errorSending,
  }) {
    return switch (this) {
      FormResetPasswordState() =>
        form != null ? form(this as FormResetPasswordState) : orElse(),
      SuccessResetPasswordState() =>
        success != null ? success(this as SuccessResetPasswordState) : orElse(),
      DataSendingResetPasswordState() => dataSending != null
          ? dataSending(this as DataSendingResetPasswordState)
          : orElse(),
      ErrorSendingResetPasswordState() => errorSending != null
          ? errorSending(this as ErrorSendingResetPasswordState)
          : orElse(),
    };
  }

  T? mapOrNull<T>({
    T Function(FormResetPasswordState form)? form,
    T Function(SuccessResetPasswordState success)? success,
    T Function(DataSendingResetPasswordState dataSending)? dataSending,
    T Function(ErrorSendingResetPasswordState errorSending)? errorSending,
  }) {
    return switch (this) {
      FormResetPasswordState() =>
        form != null ? form(this as FormResetPasswordState) : null,
      SuccessResetPasswordState() =>
        success != null ? success(this as SuccessResetPasswordState) : null,
      DataSendingResetPasswordState() => dataSending != null
          ? dataSending(this as DataSendingResetPasswordState)
          : null,
      ErrorSendingResetPasswordState() => errorSending != null
          ? errorSending(this as ErrorSendingResetPasswordState)
          : null,
    };
  }

  const ResetPasswordState();
}

class FormResetPasswordState extends ResetPasswordState {
  final String email;
  final bool validatingEnabled;
  final EmailValidator emailValidator;

  FormResetPasswordState({
    required this.email,
    required this.validatingEnabled,
    required this.emailValidator,
  });

  FormResetPasswordState copyWith({
    String? email,
    bool? validatingEnabled,
    EmailValidator? emailValidator,
  }) {
    return FormResetPasswordState(
      email: email ?? this.email,
      validatingEnabled: validatingEnabled ?? this.validatingEnabled,
      emailValidator: emailValidator ?? this.emailValidator,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FormResetPasswordState &&
        other.email == email &&
        other.validatingEnabled == validatingEnabled &&
        other.emailValidator == emailValidator;
  }

  @override
  int get hashCode {
    return email.hashCode ^
        validatingEnabled.hashCode ^
        emailValidator.hashCode;
  }
}

class SuccessResetPasswordState extends ResetPasswordState {}

class DataSendingResetPasswordState extends ResetPasswordState {
  final String email;
  final bool validatingEnabled;
  final EmailValidator emailValidator;

  DataSendingResetPasswordState({
    required this.email,
    required this.validatingEnabled,
    required this.emailValidator,
  });
}

class ErrorSendingResetPasswordState extends ResetPasswordState {
  final String errorMessage;

  ErrorSendingResetPasswordState({required this.errorMessage});
}
