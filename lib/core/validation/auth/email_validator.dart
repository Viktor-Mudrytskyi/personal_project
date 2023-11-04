import '../../core.dart';

class EmailValidator implements BaseValidator<String?, EmailErrorEnum> {
  EmailValidator(String? email) {
    update(email);
  }

  static final emailRegExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  String? _value;
  EmailErrorEnum? _error;

  @override
  EmailErrorEnum? get error => _error;

  @override
  String? getErrorText() {
    return switch (error) {
      EmailErrorEnum.emailRequired => 'Email is required',
      EmailErrorEnum.invalidEmail => 'Email is invalid',
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
  EmailErrorEnum? validate(String? value) {
    if (value.isNullOrEmpty()) {
      return EmailErrorEnum.emailRequired;
    }
    if (!emailRegExp.hasMatch(value!)) {
      return EmailErrorEnum.invalidEmail;
    }

    return null;
  }

  @override
  String? get value => _value;
}
