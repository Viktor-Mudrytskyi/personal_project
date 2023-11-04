import 'dart:async';

abstract interface class BaseValidator<V, E> {
  BaseValidator();

  V get value;

  ///Updates the current value stored in class, performs validation and updates
  ///error and isValid getter
  FutureOr<void> update(V newValue);

  E? get error;

  bool get isValid;

  FutureOr<E?> validate(V value);

  String? getErrorText();
}
