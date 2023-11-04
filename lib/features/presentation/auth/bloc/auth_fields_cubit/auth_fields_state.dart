part of 'auth_fields_cubit.dart';

sealed class AuthFieldsState {
  T map<T>({
    required T Function(FormAuthFieldsState form) form,
    required T Function(DataSendingAuthFieldsState dataSending) dataSending,
    required T Function(ErrorAuthFieldsState error) error,
    required T Function(BiometricErrorAuthFieldsState biometricError)
        biometricError,
    required T Function(SuccessAuthFieldsState success) success,
  }) {
    return switch (this) {
      FormAuthFieldsState() => form(this as FormAuthFieldsState),
      DataSendingAuthFieldsState() =>
        dataSending(this as DataSendingAuthFieldsState),
      ErrorAuthFieldsState() => error(this as ErrorAuthFieldsState),
      BiometricErrorAuthFieldsState() =>
        biometricError(this as BiometricErrorAuthFieldsState),
      SuccessAuthFieldsState() => success(this as SuccessAuthFieldsState),
    };
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function(FormAuthFieldsState form)? form,
    T Function(DataSendingAuthFieldsState dataSending)? dataSending,
    T Function(ErrorAuthFieldsState error)? error,
    T Function(BiometricErrorAuthFieldsState biometricError)? biometricError,
    T Function(SuccessAuthFieldsState success)? success,
  }) {
    return switch (this) {
      FormAuthFieldsState() =>
        form != null ? form(this as FormAuthFieldsState) : orElse(),
      DataSendingAuthFieldsState() => dataSending != null
          ? dataSending(this as DataSendingAuthFieldsState)
          : orElse(),
      ErrorAuthFieldsState() =>
        error != null ? error(this as ErrorAuthFieldsState) : orElse(),
      BiometricErrorAuthFieldsState() => biometricError != null
          ? biometricError(this as BiometricErrorAuthFieldsState)
          : orElse(),
      SuccessAuthFieldsState() =>
        success != null ? success(this as SuccessAuthFieldsState) : orElse(),
    };
  }

  T? mapOrNull<T>({
    T Function(FormAuthFieldsState form)? form,
    T Function(DataSendingAuthFieldsState dataSending)? dataSending,
    T Function(ErrorAuthFieldsState error)? error,
    T Function(BiometricErrorAuthFieldsState biometricError)? biometricError,
    T Function(SuccessAuthFieldsState success)? success,
  }) {
    return switch (this) {
      FormAuthFieldsState() =>
        form != null ? form(this as FormAuthFieldsState) : null,
      DataSendingAuthFieldsState() => dataSending != null
          ? dataSending(this as DataSendingAuthFieldsState)
          : null,
      ErrorAuthFieldsState() =>
        error != null ? error(this as ErrorAuthFieldsState) : null,
      BiometricErrorAuthFieldsState() => biometricError != null
          ? biometricError(this as BiometricErrorAuthFieldsState)
          : null,
      SuccessAuthFieldsState() =>
        success != null ? success(this as SuccessAuthFieldsState) : null,
    };
  }

  const AuthFieldsState();
}

class FormAuthFieldsState extends AuthFieldsState {
  final String email;
  final String password;
  final EmailValidator emailValidator;
  final PasswordValidator passwordValidator;

  ///Whether error is shown below text fields
  final bool isValidatingEnabled;

  const FormAuthFieldsState({
    required this.email,
    required this.password,
    required this.emailValidator,
    required this.passwordValidator,
    required this.isValidatingEnabled,
  });

  FormAuthFieldsState copyWith({
    String? email,
    String? password,
    EmailValidator? emailValidator,
    PasswordValidator? passwordValidator,
    bool? isValidatingEnabled,
  }) {
    return FormAuthFieldsState(
      email: email ?? this.email,
      password: password ?? this.password,
      emailValidator: emailValidator ?? this.emailValidator,
      passwordValidator: passwordValidator ?? this.passwordValidator,
      isValidatingEnabled: isValidatingEnabled ?? this.isValidatingEnabled,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FormAuthFieldsState &&
        other.email == email &&
        other.password == password &&
        other.emailValidator == emailValidator &&
        other.passwordValidator == passwordValidator &&
        other.isValidatingEnabled == isValidatingEnabled;
  }

  @override
  int get hashCode {
    return email.hashCode ^
        password.hashCode ^
        emailValidator.hashCode ^
        passwordValidator.hashCode ^
        isValidatingEnabled.hashCode;
  }
}

class DataSendingAuthFieldsState extends AuthFieldsState {
  final String email;
  final String password;
  final EmailValidator emailValidator;
  final PasswordValidator passwordValidator;

  ///Whether error is shown below text fields
  final bool isValidatingEnabled;

  const DataSendingAuthFieldsState({
    required this.email,
    required this.password,
    required this.emailValidator,
    required this.passwordValidator,
    required this.isValidatingEnabled,
  });
}

class ErrorAuthFieldsState extends AuthFieldsState {
  final String errorMessage;

  ErrorAuthFieldsState({required this.errorMessage});
}

class BiometricErrorAuthFieldsState extends AuthFieldsState {
  final String errorMessage;

  BiometricErrorAuthFieldsState({required this.errorMessage});
}

class SuccessAuthFieldsState extends AuthFieldsState {
  SuccessAuthFieldsState();
}
