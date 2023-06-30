// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_fields_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthFieldsState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  AuthErrorEnum get emailError => throw _privateConstructorUsedError;
  AuthErrorEnum get passwordError => throw _privateConstructorUsedError;
  AuthErrorEnum get firebaseError => throw _privateConstructorUsedError;
  AuthErrorEnum get biometricsError => throw _privateConstructorUsedError;

  ///Is true when user clicked on login/register
  ///and prevents user from clicking on them again and changing text fields
  bool get isValidating => throw _privateConstructorUsedError;

  ///Is true after user clicked on login/register
  bool get validatingEnabled => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String email,
            String password,
            AuthErrorEnum emailError,
            AuthErrorEnum passwordError,
            AuthErrorEnum firebaseError,
            AuthErrorEnum biometricsError,
            bool isValidating,
            bool validatingEnabled)
        $default, {
    required TResult Function(
            String email,
            String password,
            AuthErrorEnum emailError,
            AuthErrorEnum passwordError,
            AuthErrorEnum firebaseError,
            AuthErrorEnum biometricsError,
            bool isValidating,
            bool validatingEnabled)
        authSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String email,
            String password,
            AuthErrorEnum emailError,
            AuthErrorEnum passwordError,
            AuthErrorEnum firebaseError,
            AuthErrorEnum biometricsError,
            bool isValidating,
            bool validatingEnabled)?
        $default, {
    TResult? Function(
            String email,
            String password,
            AuthErrorEnum emailError,
            AuthErrorEnum passwordError,
            AuthErrorEnum firebaseError,
            AuthErrorEnum biometricsError,
            bool isValidating,
            bool validatingEnabled)?
        authSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String email,
            String password,
            AuthErrorEnum emailError,
            AuthErrorEnum passwordError,
            AuthErrorEnum firebaseError,
            AuthErrorEnum biometricsError,
            bool isValidating,
            bool validatingEnabled)?
        $default, {
    TResult Function(
            String email,
            String password,
            AuthErrorEnum emailError,
            AuthErrorEnum passwordError,
            AuthErrorEnum firebaseError,
            AuthErrorEnum biometricsError,
            bool isValidating,
            bool validatingEnabled)?
        authSuccessful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AuthFieldsNormalState value) $default, {
    required TResult Function(AuthSuccessful value) authSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AuthFieldsNormalState value)? $default, {
    TResult? Function(AuthSuccessful value)? authSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AuthFieldsNormalState value)? $default, {
    TResult Function(AuthSuccessful value)? authSuccessful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthFieldsStateCopyWith<AuthFieldsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFieldsStateCopyWith<$Res> {
  factory $AuthFieldsStateCopyWith(
          AuthFieldsState value, $Res Function(AuthFieldsState) then) =
      _$AuthFieldsStateCopyWithImpl<$Res, AuthFieldsState>;
  @useResult
  $Res call(
      {String email,
      String password,
      AuthErrorEnum emailError,
      AuthErrorEnum passwordError,
      AuthErrorEnum firebaseError,
      AuthErrorEnum biometricsError,
      bool isValidating,
      bool validatingEnabled});
}

/// @nodoc
class _$AuthFieldsStateCopyWithImpl<$Res, $Val extends AuthFieldsState>
    implements $AuthFieldsStateCopyWith<$Res> {
  _$AuthFieldsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? emailError = null,
    Object? passwordError = null,
    Object? firebaseError = null,
    Object? biometricsError = null,
    Object? isValidating = null,
    Object? validatingEnabled = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      emailError: null == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as AuthErrorEnum,
      passwordError: null == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as AuthErrorEnum,
      firebaseError: null == firebaseError
          ? _value.firebaseError
          : firebaseError // ignore: cast_nullable_to_non_nullable
              as AuthErrorEnum,
      biometricsError: null == biometricsError
          ? _value.biometricsError
          : biometricsError // ignore: cast_nullable_to_non_nullable
              as AuthErrorEnum,
      isValidating: null == isValidating
          ? _value.isValidating
          : isValidating // ignore: cast_nullable_to_non_nullable
              as bool,
      validatingEnabled: null == validatingEnabled
          ? _value.validatingEnabled
          : validatingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthFieldsNormalStateCopyWith<$Res>
    implements $AuthFieldsStateCopyWith<$Res> {
  factory _$$AuthFieldsNormalStateCopyWith(_$AuthFieldsNormalState value,
          $Res Function(_$AuthFieldsNormalState) then) =
      __$$AuthFieldsNormalStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      AuthErrorEnum emailError,
      AuthErrorEnum passwordError,
      AuthErrorEnum firebaseError,
      AuthErrorEnum biometricsError,
      bool isValidating,
      bool validatingEnabled});
}

/// @nodoc
class __$$AuthFieldsNormalStateCopyWithImpl<$Res>
    extends _$AuthFieldsStateCopyWithImpl<$Res, _$AuthFieldsNormalState>
    implements _$$AuthFieldsNormalStateCopyWith<$Res> {
  __$$AuthFieldsNormalStateCopyWithImpl(_$AuthFieldsNormalState _value,
      $Res Function(_$AuthFieldsNormalState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? emailError = null,
    Object? passwordError = null,
    Object? firebaseError = null,
    Object? biometricsError = null,
    Object? isValidating = null,
    Object? validatingEnabled = null,
  }) {
    return _then(_$AuthFieldsNormalState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      emailError: null == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as AuthErrorEnum,
      passwordError: null == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as AuthErrorEnum,
      firebaseError: null == firebaseError
          ? _value.firebaseError
          : firebaseError // ignore: cast_nullable_to_non_nullable
              as AuthErrorEnum,
      biometricsError: null == biometricsError
          ? _value.biometricsError
          : biometricsError // ignore: cast_nullable_to_non_nullable
              as AuthErrorEnum,
      isValidating: null == isValidating
          ? _value.isValidating
          : isValidating // ignore: cast_nullable_to_non_nullable
              as bool,
      validatingEnabled: null == validatingEnabled
          ? _value.validatingEnabled
          : validatingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthFieldsNormalState implements AuthFieldsNormalState {
  const _$AuthFieldsNormalState(
      {required this.email,
      required this.password,
      required this.emailError,
      required this.passwordError,
      required this.firebaseError,
      required this.biometricsError,
      required this.isValidating,
      required this.validatingEnabled});

  @override
  final String email;
  @override
  final String password;
  @override
  final AuthErrorEnum emailError;
  @override
  final AuthErrorEnum passwordError;
  @override
  final AuthErrorEnum firebaseError;
  @override
  final AuthErrorEnum biometricsError;

  ///Is true when user clicked on login/register
  ///and prevents user from clicking on them again and changing text fields
  @override
  final bool isValidating;

  ///Is true after user clicked on login/register
  @override
  final bool validatingEnabled;

  @override
  String toString() {
    return 'AuthFieldsState(email: $email, password: $password, emailError: $emailError, passwordError: $passwordError, firebaseError: $firebaseError, biometricsError: $biometricsError, isValidating: $isValidating, validatingEnabled: $validatingEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFieldsNormalState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.emailError, emailError) ||
                other.emailError == emailError) &&
            (identical(other.passwordError, passwordError) ||
                other.passwordError == passwordError) &&
            (identical(other.firebaseError, firebaseError) ||
                other.firebaseError == firebaseError) &&
            (identical(other.biometricsError, biometricsError) ||
                other.biometricsError == biometricsError) &&
            (identical(other.isValidating, isValidating) ||
                other.isValidating == isValidating) &&
            (identical(other.validatingEnabled, validatingEnabled) ||
                other.validatingEnabled == validatingEnabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      password,
      emailError,
      passwordError,
      firebaseError,
      biometricsError,
      isValidating,
      validatingEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFieldsNormalStateCopyWith<_$AuthFieldsNormalState> get copyWith =>
      __$$AuthFieldsNormalStateCopyWithImpl<_$AuthFieldsNormalState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String email,
            String password,
            AuthErrorEnum emailError,
            AuthErrorEnum passwordError,
            AuthErrorEnum firebaseError,
            AuthErrorEnum biometricsError,
            bool isValidating,
            bool validatingEnabled)
        $default, {
    required TResult Function(
            String email,
            String password,
            AuthErrorEnum emailError,
            AuthErrorEnum passwordError,
            AuthErrorEnum firebaseError,
            AuthErrorEnum biometricsError,
            bool isValidating,
            bool validatingEnabled)
        authSuccessful,
  }) {
    return $default(email, password, emailError, passwordError, firebaseError,
        biometricsError, isValidating, validatingEnabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String email,
            String password,
            AuthErrorEnum emailError,
            AuthErrorEnum passwordError,
            AuthErrorEnum firebaseError,
            AuthErrorEnum biometricsError,
            bool isValidating,
            bool validatingEnabled)?
        $default, {
    TResult? Function(
            String email,
            String password,
            AuthErrorEnum emailError,
            AuthErrorEnum passwordError,
            AuthErrorEnum firebaseError,
            AuthErrorEnum biometricsError,
            bool isValidating,
            bool validatingEnabled)?
        authSuccessful,
  }) {
    return $default?.call(email, password, emailError, passwordError,
        firebaseError, biometricsError, isValidating, validatingEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String email,
            String password,
            AuthErrorEnum emailError,
            AuthErrorEnum passwordError,
            AuthErrorEnum firebaseError,
            AuthErrorEnum biometricsError,
            bool isValidating,
            bool validatingEnabled)?
        $default, {
    TResult Function(
            String email,
            String password,
            AuthErrorEnum emailError,
            AuthErrorEnum passwordError,
            AuthErrorEnum firebaseError,
            AuthErrorEnum biometricsError,
            bool isValidating,
            bool validatingEnabled)?
        authSuccessful,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email, password, emailError, passwordError, firebaseError,
          biometricsError, isValidating, validatingEnabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AuthFieldsNormalState value) $default, {
    required TResult Function(AuthSuccessful value) authSuccessful,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AuthFieldsNormalState value)? $default, {
    TResult? Function(AuthSuccessful value)? authSuccessful,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AuthFieldsNormalState value)? $default, {
    TResult Function(AuthSuccessful value)? authSuccessful,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class AuthFieldsNormalState implements AuthFieldsState {
  const factory AuthFieldsNormalState(
      {required final String email,
      required final String password,
      required final AuthErrorEnum emailError,
      required final AuthErrorEnum passwordError,
      required final AuthErrorEnum firebaseError,
      required final AuthErrorEnum biometricsError,
      required final bool isValidating,
      required final bool validatingEnabled}) = _$AuthFieldsNormalState;

  @override
  String get email;
  @override
  String get password;
  @override
  AuthErrorEnum get emailError;
  @override
  AuthErrorEnum get passwordError;
  @override
  AuthErrorEnum get firebaseError;
  @override
  AuthErrorEnum get biometricsError;
  @override

  ///Is true when user clicked on login/register
  ///and prevents user from clicking on them again and changing text fields
  bool get isValidating;
  @override

  ///Is true after user clicked on login/register
  bool get validatingEnabled;
  @override
  @JsonKey(ignore: true)
  _$$AuthFieldsNormalStateCopyWith<_$AuthFieldsNormalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthSuccessfulCopyWith<$Res>
    implements $AuthFieldsStateCopyWith<$Res> {
  factory _$$AuthSuccessfulCopyWith(
          _$AuthSuccessful value, $Res Function(_$AuthSuccessful) then) =
      __$$AuthSuccessfulCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      AuthErrorEnum emailError,
      AuthErrorEnum passwordError,
      AuthErrorEnum firebaseError,
      AuthErrorEnum biometricsError,
      bool isValidating,
      bool validatingEnabled});
}

/// @nodoc
class __$$AuthSuccessfulCopyWithImpl<$Res>
    extends _$AuthFieldsStateCopyWithImpl<$Res, _$AuthSuccessful>
    implements _$$AuthSuccessfulCopyWith<$Res> {
  __$$AuthSuccessfulCopyWithImpl(
      _$AuthSuccessful _value, $Res Function(_$AuthSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? emailError = null,
    Object? passwordError = null,
    Object? firebaseError = null,
    Object? biometricsError = null,
    Object? isValidating = null,
    Object? validatingEnabled = null,
  }) {
    return _then(_$AuthSuccessful(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      emailError: null == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as AuthErrorEnum,
      passwordError: null == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as AuthErrorEnum,
      firebaseError: null == firebaseError
          ? _value.firebaseError
          : firebaseError // ignore: cast_nullable_to_non_nullable
              as AuthErrorEnum,
      biometricsError: null == biometricsError
          ? _value.biometricsError
          : biometricsError // ignore: cast_nullable_to_non_nullable
              as AuthErrorEnum,
      isValidating: null == isValidating
          ? _value.isValidating
          : isValidating // ignore: cast_nullable_to_non_nullable
              as bool,
      validatingEnabled: null == validatingEnabled
          ? _value.validatingEnabled
          : validatingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthSuccessful implements AuthSuccessful {
  const _$AuthSuccessful(
      {required this.email,
      required this.password,
      required this.emailError,
      required this.passwordError,
      required this.firebaseError,
      required this.biometricsError,
      required this.isValidating,
      required this.validatingEnabled});

  @override
  final String email;
  @override
  final String password;
  @override
  final AuthErrorEnum emailError;
  @override
  final AuthErrorEnum passwordError;
  @override
  final AuthErrorEnum firebaseError;
  @override
  final AuthErrorEnum biometricsError;

  ///Is true when user clicked on login/register
  ///and prevents user from clicking on them again and changing text fields
  @override
  final bool isValidating;

  ///Is true after user clicked on login/register
  @override
  final bool validatingEnabled;

  @override
  String toString() {
    return 'AuthFieldsState.authSuccessful(email: $email, password: $password, emailError: $emailError, passwordError: $passwordError, firebaseError: $firebaseError, biometricsError: $biometricsError, isValidating: $isValidating, validatingEnabled: $validatingEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSuccessful &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.emailError, emailError) ||
                other.emailError == emailError) &&
            (identical(other.passwordError, passwordError) ||
                other.passwordError == passwordError) &&
            (identical(other.firebaseError, firebaseError) ||
                other.firebaseError == firebaseError) &&
            (identical(other.biometricsError, biometricsError) ||
                other.biometricsError == biometricsError) &&
            (identical(other.isValidating, isValidating) ||
                other.isValidating == isValidating) &&
            (identical(other.validatingEnabled, validatingEnabled) ||
                other.validatingEnabled == validatingEnabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      password,
      emailError,
      passwordError,
      firebaseError,
      biometricsError,
      isValidating,
      validatingEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSuccessfulCopyWith<_$AuthSuccessful> get copyWith =>
      __$$AuthSuccessfulCopyWithImpl<_$AuthSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String email,
            String password,
            AuthErrorEnum emailError,
            AuthErrorEnum passwordError,
            AuthErrorEnum firebaseError,
            AuthErrorEnum biometricsError,
            bool isValidating,
            bool validatingEnabled)
        $default, {
    required TResult Function(
            String email,
            String password,
            AuthErrorEnum emailError,
            AuthErrorEnum passwordError,
            AuthErrorEnum firebaseError,
            AuthErrorEnum biometricsError,
            bool isValidating,
            bool validatingEnabled)
        authSuccessful,
  }) {
    return authSuccessful(email, password, emailError, passwordError,
        firebaseError, biometricsError, isValidating, validatingEnabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String email,
            String password,
            AuthErrorEnum emailError,
            AuthErrorEnum passwordError,
            AuthErrorEnum firebaseError,
            AuthErrorEnum biometricsError,
            bool isValidating,
            bool validatingEnabled)?
        $default, {
    TResult? Function(
            String email,
            String password,
            AuthErrorEnum emailError,
            AuthErrorEnum passwordError,
            AuthErrorEnum firebaseError,
            AuthErrorEnum biometricsError,
            bool isValidating,
            bool validatingEnabled)?
        authSuccessful,
  }) {
    return authSuccessful?.call(email, password, emailError, passwordError,
        firebaseError, biometricsError, isValidating, validatingEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String email,
            String password,
            AuthErrorEnum emailError,
            AuthErrorEnum passwordError,
            AuthErrorEnum firebaseError,
            AuthErrorEnum biometricsError,
            bool isValidating,
            bool validatingEnabled)?
        $default, {
    TResult Function(
            String email,
            String password,
            AuthErrorEnum emailError,
            AuthErrorEnum passwordError,
            AuthErrorEnum firebaseError,
            AuthErrorEnum biometricsError,
            bool isValidating,
            bool validatingEnabled)?
        authSuccessful,
    required TResult orElse(),
  }) {
    if (authSuccessful != null) {
      return authSuccessful(email, password, emailError, passwordError,
          firebaseError, biometricsError, isValidating, validatingEnabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AuthFieldsNormalState value) $default, {
    required TResult Function(AuthSuccessful value) authSuccessful,
  }) {
    return authSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AuthFieldsNormalState value)? $default, {
    TResult? Function(AuthSuccessful value)? authSuccessful,
  }) {
    return authSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AuthFieldsNormalState value)? $default, {
    TResult Function(AuthSuccessful value)? authSuccessful,
    required TResult orElse(),
  }) {
    if (authSuccessful != null) {
      return authSuccessful(this);
    }
    return orElse();
  }
}

abstract class AuthSuccessful implements AuthFieldsState {
  const factory AuthSuccessful(
      {required final String email,
      required final String password,
      required final AuthErrorEnum emailError,
      required final AuthErrorEnum passwordError,
      required final AuthErrorEnum firebaseError,
      required final AuthErrorEnum biometricsError,
      required final bool isValidating,
      required final bool validatingEnabled}) = _$AuthSuccessful;

  @override
  String get email;
  @override
  String get password;
  @override
  AuthErrorEnum get emailError;
  @override
  AuthErrorEnum get passwordError;
  @override
  AuthErrorEnum get firebaseError;
  @override
  AuthErrorEnum get biometricsError;
  @override

  ///Is true when user clicked on login/register
  ///and prevents user from clicking on them again and changing text fields
  bool get isValidating;
  @override

  ///Is true after user clicked on login/register
  bool get validatingEnabled;
  @override
  @JsonKey(ignore: true)
  _$$AuthSuccessfulCopyWith<_$AuthSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}
