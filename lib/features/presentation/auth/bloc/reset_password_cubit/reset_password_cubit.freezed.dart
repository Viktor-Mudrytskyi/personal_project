// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResetPasswordState {
  String get email => throw _privateConstructorUsedError;
  bool get isValidating => throw _privateConstructorUsedError;
  bool get validatingEnabled => throw _privateConstructorUsedError;
  AuthErrorEnum get emailError => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, bool isValidating, bool validatingEnabled,
            AuthErrorEnum emailError, AuthErrorEnum firebaseError)
        $default, {
    required TResult Function(String email, bool isValidating,
            bool validatingEnabled, AuthErrorEnum emailError)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, bool isValidating, bool validatingEnabled,
            AuthErrorEnum emailError, AuthErrorEnum firebaseError)?
        $default, {
    TResult? Function(String email, bool isValidating, bool validatingEnabled,
            AuthErrorEnum emailError)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, bool isValidating, bool validatingEnabled,
            AuthErrorEnum emailError, AuthErrorEnum firebaseError)?
        $default, {
    TResult Function(String email, bool isValidating, bool validatingEnabled,
            AuthErrorEnum emailError)?
        success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MyResetPasswordState value) $default, {
    required TResult Function(ResetPasswordSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(MyResetPasswordState value)? $default, {
    TResult? Function(ResetPasswordSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MyResetPasswordState value)? $default, {
    TResult Function(ResetPasswordSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResetPasswordStateCopyWith<ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordStateCopyWith(
          ResetPasswordState value, $Res Function(ResetPasswordState) then) =
      _$ResetPasswordStateCopyWithImpl<$Res, ResetPasswordState>;
  @useResult
  $Res call(
      {String email,
      bool isValidating,
      bool validatingEnabled,
      AuthErrorEnum emailError});
}

/// @nodoc
class _$ResetPasswordStateCopyWithImpl<$Res, $Val extends ResetPasswordState>
    implements $ResetPasswordStateCopyWith<$Res> {
  _$ResetPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? isValidating = null,
    Object? validatingEnabled = null,
    Object? emailError = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isValidating: null == isValidating
          ? _value.isValidating
          : isValidating // ignore: cast_nullable_to_non_nullable
              as bool,
      validatingEnabled: null == validatingEnabled
          ? _value.validatingEnabled
          : validatingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      emailError: null == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as AuthErrorEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyResetPasswordStateCopyWith<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  factory _$$MyResetPasswordStateCopyWith(_$MyResetPasswordState value,
          $Res Function(_$MyResetPasswordState) then) =
      __$$MyResetPasswordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      bool isValidating,
      bool validatingEnabled,
      AuthErrorEnum emailError,
      AuthErrorEnum firebaseError});
}

/// @nodoc
class __$$MyResetPasswordStateCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res, _$MyResetPasswordState>
    implements _$$MyResetPasswordStateCopyWith<$Res> {
  __$$MyResetPasswordStateCopyWithImpl(_$MyResetPasswordState _value,
      $Res Function(_$MyResetPasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? isValidating = null,
    Object? validatingEnabled = null,
    Object? emailError = null,
    Object? firebaseError = null,
  }) {
    return _then(_$MyResetPasswordState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isValidating: null == isValidating
          ? _value.isValidating
          : isValidating // ignore: cast_nullable_to_non_nullable
              as bool,
      validatingEnabled: null == validatingEnabled
          ? _value.validatingEnabled
          : validatingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      emailError: null == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as AuthErrorEnum,
      firebaseError: null == firebaseError
          ? _value.firebaseError
          : firebaseError // ignore: cast_nullable_to_non_nullable
              as AuthErrorEnum,
    ));
  }
}

/// @nodoc

class _$MyResetPasswordState implements MyResetPasswordState {
  const _$MyResetPasswordState(
      {required this.email,
      required this.isValidating,
      required this.validatingEnabled,
      required this.emailError,
      required this.firebaseError});

  @override
  final String email;
  @override
  final bool isValidating;
  @override
  final bool validatingEnabled;
  @override
  final AuthErrorEnum emailError;
  @override
  final AuthErrorEnum firebaseError;

  @override
  String toString() {
    return 'ResetPasswordState(email: $email, isValidating: $isValidating, validatingEnabled: $validatingEnabled, emailError: $emailError, firebaseError: $firebaseError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyResetPasswordState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isValidating, isValidating) ||
                other.isValidating == isValidating) &&
            (identical(other.validatingEnabled, validatingEnabled) ||
                other.validatingEnabled == validatingEnabled) &&
            (identical(other.emailError, emailError) ||
                other.emailError == emailError) &&
            (identical(other.firebaseError, firebaseError) ||
                other.firebaseError == firebaseError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, isValidating,
      validatingEnabled, emailError, firebaseError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyResetPasswordStateCopyWith<_$MyResetPasswordState> get copyWith =>
      __$$MyResetPasswordStateCopyWithImpl<_$MyResetPasswordState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, bool isValidating, bool validatingEnabled,
            AuthErrorEnum emailError, AuthErrorEnum firebaseError)
        $default, {
    required TResult Function(String email, bool isValidating,
            bool validatingEnabled, AuthErrorEnum emailError)
        success,
  }) {
    return $default(
        email, isValidating, validatingEnabled, emailError, firebaseError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, bool isValidating, bool validatingEnabled,
            AuthErrorEnum emailError, AuthErrorEnum firebaseError)?
        $default, {
    TResult? Function(String email, bool isValidating, bool validatingEnabled,
            AuthErrorEnum emailError)?
        success,
  }) {
    return $default?.call(
        email, isValidating, validatingEnabled, emailError, firebaseError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, bool isValidating, bool validatingEnabled,
            AuthErrorEnum emailError, AuthErrorEnum firebaseError)?
        $default, {
    TResult Function(String email, bool isValidating, bool validatingEnabled,
            AuthErrorEnum emailError)?
        success,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          email, isValidating, validatingEnabled, emailError, firebaseError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MyResetPasswordState value) $default, {
    required TResult Function(ResetPasswordSuccessState value) success,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(MyResetPasswordState value)? $default, {
    TResult? Function(ResetPasswordSuccessState value)? success,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MyResetPasswordState value)? $default, {
    TResult Function(ResetPasswordSuccessState value)? success,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class MyResetPasswordState implements ResetPasswordState {
  const factory MyResetPasswordState(
      {required final String email,
      required final bool isValidating,
      required final bool validatingEnabled,
      required final AuthErrorEnum emailError,
      required final AuthErrorEnum firebaseError}) = _$MyResetPasswordState;

  @override
  String get email;
  @override
  bool get isValidating;
  @override
  bool get validatingEnabled;
  @override
  AuthErrorEnum get emailError;
  AuthErrorEnum get firebaseError;
  @override
  @JsonKey(ignore: true)
  _$$MyResetPasswordStateCopyWith<_$MyResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetPasswordSuccessStateCopyWith<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  factory _$$ResetPasswordSuccessStateCopyWith(
          _$ResetPasswordSuccessState value,
          $Res Function(_$ResetPasswordSuccessState) then) =
      __$$ResetPasswordSuccessStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      bool isValidating,
      bool validatingEnabled,
      AuthErrorEnum emailError});
}

/// @nodoc
class __$$ResetPasswordSuccessStateCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res, _$ResetPasswordSuccessState>
    implements _$$ResetPasswordSuccessStateCopyWith<$Res> {
  __$$ResetPasswordSuccessStateCopyWithImpl(_$ResetPasswordSuccessState _value,
      $Res Function(_$ResetPasswordSuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? isValidating = null,
    Object? validatingEnabled = null,
    Object? emailError = null,
  }) {
    return _then(_$ResetPasswordSuccessState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isValidating: null == isValidating
          ? _value.isValidating
          : isValidating // ignore: cast_nullable_to_non_nullable
              as bool,
      validatingEnabled: null == validatingEnabled
          ? _value.validatingEnabled
          : validatingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      emailError: null == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as AuthErrorEnum,
    ));
  }
}

/// @nodoc

class _$ResetPasswordSuccessState implements ResetPasswordSuccessState {
  const _$ResetPasswordSuccessState(
      {required this.email,
      required this.isValidating,
      required this.validatingEnabled,
      required this.emailError});

  @override
  final String email;
  @override
  final bool isValidating;
  @override
  final bool validatingEnabled;
  @override
  final AuthErrorEnum emailError;

  @override
  String toString() {
    return 'ResetPasswordState.success(email: $email, isValidating: $isValidating, validatingEnabled: $validatingEnabled, emailError: $emailError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordSuccessState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isValidating, isValidating) ||
                other.isValidating == isValidating) &&
            (identical(other.validatingEnabled, validatingEnabled) ||
                other.validatingEnabled == validatingEnabled) &&
            (identical(other.emailError, emailError) ||
                other.emailError == emailError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, isValidating, validatingEnabled, emailError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordSuccessStateCopyWith<_$ResetPasswordSuccessState>
      get copyWith => __$$ResetPasswordSuccessStateCopyWithImpl<
          _$ResetPasswordSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, bool isValidating, bool validatingEnabled,
            AuthErrorEnum emailError, AuthErrorEnum firebaseError)
        $default, {
    required TResult Function(String email, bool isValidating,
            bool validatingEnabled, AuthErrorEnum emailError)
        success,
  }) {
    return success(email, isValidating, validatingEnabled, emailError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, bool isValidating, bool validatingEnabled,
            AuthErrorEnum emailError, AuthErrorEnum firebaseError)?
        $default, {
    TResult? Function(String email, bool isValidating, bool validatingEnabled,
            AuthErrorEnum emailError)?
        success,
  }) {
    return success?.call(email, isValidating, validatingEnabled, emailError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, bool isValidating, bool validatingEnabled,
            AuthErrorEnum emailError, AuthErrorEnum firebaseError)?
        $default, {
    TResult Function(String email, bool isValidating, bool validatingEnabled,
            AuthErrorEnum emailError)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(email, isValidating, validatingEnabled, emailError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MyResetPasswordState value) $default, {
    required TResult Function(ResetPasswordSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(MyResetPasswordState value)? $default, {
    TResult? Function(ResetPasswordSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MyResetPasswordState value)? $default, {
    TResult Function(ResetPasswordSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordSuccessState implements ResetPasswordState {
  const factory ResetPasswordSuccessState(
      {required final String email,
      required final bool isValidating,
      required final bool validatingEnabled,
      required final AuthErrorEnum emailError}) = _$ResetPasswordSuccessState;

  @override
  String get email;
  @override
  bool get isValidating;
  @override
  bool get validatingEnabled;
  @override
  AuthErrorEnum get emailError;
  @override
  @JsonKey(ignore: true)
  _$$ResetPasswordSuccessStateCopyWith<_$ResetPasswordSuccessState>
      get copyWith => throw _privateConstructorUsedError;
}
