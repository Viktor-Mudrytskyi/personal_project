import '../../core.dart';

class PasswordValidator implements BaseValidator<String?, PasswordErrorEnum> {
  PasswordValidator(String? password) {
    update(password);
  }

  String? _value;
  PasswordErrorEnum? _error;

  @override
  PasswordErrorEnum? get error => _error;

  @override
  String? getErrorText() {
    return switch (error) {
      PasswordErrorEnum.passwordTooShort => 'Password is too short',
      PasswordErrorEnum.passwordRequired => 'Password is required',
      PasswordErrorEnum.passwordTooLong => 'Password is too long',
      null => null,
    };
  }

  @override
  bool get isValid => _error == null;

  @override
  void update(String? newValue) {
    _value = newValue;
    _error = validate(newValue);
  }

  @override
  PasswordErrorEnum? validate(String? value) {
    if (value.isNullOrEmpty()) {
      return PasswordErrorEnum.passwordRequired;
    }

    if (value!.length < 6) {
      return PasswordErrorEnum.passwordTooShort;
    }
    if (value.length > 20) {
      return PasswordErrorEnum.passwordTooLong;
    }

    return null;
  }

  @override
  String? get value => _value;
}
