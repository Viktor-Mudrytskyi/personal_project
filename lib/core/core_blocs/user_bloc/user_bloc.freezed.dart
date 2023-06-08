// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) register,
    required TResult Function(String email, String password) logIn,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(String email, String password)? logIn,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(String email, String password)? logIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterEvent value) register,
    required TResult Function(_LogInEvent value) logIn,
    required TResult Function(_LogOutEvent value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterEvent value)? register,
    TResult? Function(_LogInEvent value)? logIn,
    TResult? Function(_LogOutEvent value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterEvent value)? register,
    TResult Function(_LogInEvent value)? logIn,
    TResult Function(_LogOutEvent value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RegisterEventCopyWith<$Res> {
  factory _$$_RegisterEventCopyWith(
          _$_RegisterEvent value, $Res Function(_$_RegisterEvent) then) =
      __$$_RegisterEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_RegisterEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_RegisterEvent>
    implements _$$_RegisterEventCopyWith<$Res> {
  __$$_RegisterEventCopyWithImpl(
      _$_RegisterEvent _value, $Res Function(_$_RegisterEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_RegisterEvent(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterEvent implements _RegisterEvent {
  const _$_RegisterEvent({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'UserEvent.register(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterEventCopyWith<_$_RegisterEvent> get copyWith =>
      __$$_RegisterEventCopyWithImpl<_$_RegisterEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) register,
    required TResult Function(String email, String password) logIn,
    required TResult Function() logout,
  }) {
    return register(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(String email, String password)? logIn,
    TResult? Function()? logout,
  }) {
    return register?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(String email, String password)? logIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterEvent value) register,
    required TResult Function(_LogInEvent value) logIn,
    required TResult Function(_LogOutEvent value) logout,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterEvent value)? register,
    TResult? Function(_LogInEvent value)? logIn,
    TResult? Function(_LogOutEvent value)? logout,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterEvent value)? register,
    TResult Function(_LogInEvent value)? logIn,
    TResult Function(_LogOutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _RegisterEvent implements UserEvent {
  const factory _RegisterEvent(
      {required final String email,
      required final String password}) = _$_RegisterEvent;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_RegisterEventCopyWith<_$_RegisterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogInEventCopyWith<$Res> {
  factory _$$_LogInEventCopyWith(
          _$_LogInEvent value, $Res Function(_$_LogInEvent) then) =
      __$$_LogInEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_LogInEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_LogInEvent>
    implements _$$_LogInEventCopyWith<$Res> {
  __$$_LogInEventCopyWithImpl(
      _$_LogInEvent _value, $Res Function(_$_LogInEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_LogInEvent(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LogInEvent implements _LogInEvent {
  const _$_LogInEvent({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'UserEvent.logIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogInEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogInEventCopyWith<_$_LogInEvent> get copyWith =>
      __$$_LogInEventCopyWithImpl<_$_LogInEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) register,
    required TResult Function(String email, String password) logIn,
    required TResult Function() logout,
  }) {
    return logIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(String email, String password)? logIn,
    TResult? Function()? logout,
  }) {
    return logIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(String email, String password)? logIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterEvent value) register,
    required TResult Function(_LogInEvent value) logIn,
    required TResult Function(_LogOutEvent value) logout,
  }) {
    return logIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterEvent value)? register,
    TResult? Function(_LogInEvent value)? logIn,
    TResult? Function(_LogOutEvent value)? logout,
  }) {
    return logIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterEvent value)? register,
    TResult Function(_LogInEvent value)? logIn,
    TResult Function(_LogOutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(this);
    }
    return orElse();
  }
}

abstract class _LogInEvent implements UserEvent {
  const factory _LogInEvent(
      {required final String email,
      required final String password}) = _$_LogInEvent;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_LogInEventCopyWith<_$_LogInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogOutEventCopyWith<$Res> {
  factory _$$_LogOutEventCopyWith(
          _$_LogOutEvent value, $Res Function(_$_LogOutEvent) then) =
      __$$_LogOutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogOutEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_LogOutEvent>
    implements _$$_LogOutEventCopyWith<$Res> {
  __$$_LogOutEventCopyWithImpl(
      _$_LogOutEvent _value, $Res Function(_$_LogOutEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LogOutEvent implements _LogOutEvent {
  const _$_LogOutEvent();

  @override
  String toString() {
    return 'UserEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LogOutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) register,
    required TResult Function(String email, String password) logIn,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(String email, String password)? logIn,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(String email, String password)? logIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterEvent value) register,
    required TResult Function(_LogInEvent value) logIn,
    required TResult Function(_LogOutEvent value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterEvent value)? register,
    TResult? Function(_LogInEvent value)? logIn,
    TResult? Function(_LogOutEvent value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterEvent value)? register,
    TResult Function(_LogInEvent value)? logIn,
    TResult Function(_LogOutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _LogOutEvent implements UserEvent {
  const factory _LogOutEvent() = _$_LogOutEvent;
}

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unuthenticated,
    required TResult Function() loading,
    required TResult Function(AuthErrorEnum error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? unuthenticated,
    TResult? Function()? loading,
    TResult? Function(AuthErrorEnum error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unuthenticated,
    TResult Function()? loading,
    TResult Function(AuthErrorEnum error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_UnauthenticatedState value) unuthenticated,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticatedState value)? authenticated,
    TResult? Function(_UnauthenticatedState value)? unuthenticated,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_UnauthenticatedState value)? unuthenticated,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthenticatedStateCopyWith<$Res> {
  factory _$$_AuthenticatedStateCopyWith(_$_AuthenticatedState value,
          $Res Function(_$_AuthenticatedState) then) =
      __$$_AuthenticatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticatedStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_AuthenticatedState>
    implements _$$_AuthenticatedStateCopyWith<$Res> {
  __$$_AuthenticatedStateCopyWithImpl(
      _$_AuthenticatedState _value, $Res Function(_$_AuthenticatedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthenticatedState implements _AuthenticatedState {
  const _$_AuthenticatedState();

  @override
  String toString() {
    return 'UserState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthenticatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unuthenticated,
    required TResult Function() loading,
    required TResult Function(AuthErrorEnum error) error,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? unuthenticated,
    TResult? Function()? loading,
    TResult? Function(AuthErrorEnum error)? error,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unuthenticated,
    TResult Function()? loading,
    TResult Function(AuthErrorEnum error)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_UnauthenticatedState value) unuthenticated,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticatedState value)? authenticated,
    TResult? Function(_UnauthenticatedState value)? unuthenticated,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_UnauthenticatedState value)? unuthenticated,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthenticatedState implements UserState {
  const factory _AuthenticatedState() = _$_AuthenticatedState;
}

/// @nodoc
abstract class _$$_UnauthenticatedStateCopyWith<$Res> {
  factory _$$_UnauthenticatedStateCopyWith(_$_UnauthenticatedState value,
          $Res Function(_$_UnauthenticatedState) then) =
      __$$_UnauthenticatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnauthenticatedStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UnauthenticatedState>
    implements _$$_UnauthenticatedStateCopyWith<$Res> {
  __$$_UnauthenticatedStateCopyWithImpl(_$_UnauthenticatedState _value,
      $Res Function(_$_UnauthenticatedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnauthenticatedState implements _UnauthenticatedState {
  const _$_UnauthenticatedState();

  @override
  String toString() {
    return 'UserState.unuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnauthenticatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unuthenticated,
    required TResult Function() loading,
    required TResult Function(AuthErrorEnum error) error,
  }) {
    return unuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? unuthenticated,
    TResult? Function()? loading,
    TResult? Function(AuthErrorEnum error)? error,
  }) {
    return unuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unuthenticated,
    TResult Function()? loading,
    TResult Function(AuthErrorEnum error)? error,
    required TResult orElse(),
  }) {
    if (unuthenticated != null) {
      return unuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_UnauthenticatedState value) unuthenticated,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
  }) {
    return unuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticatedState value)? authenticated,
    TResult? Function(_UnauthenticatedState value)? unuthenticated,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
  }) {
    return unuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_UnauthenticatedState value)? unuthenticated,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (unuthenticated != null) {
      return unuthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnauthenticatedState implements UserState {
  const factory _UnauthenticatedState() = _$_UnauthenticatedState;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_LoadingState>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unuthenticated,
    required TResult Function() loading,
    required TResult Function(AuthErrorEnum error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? unuthenticated,
    TResult? Function()? loading,
    TResult? Function(AuthErrorEnum error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unuthenticated,
    TResult Function()? loading,
    TResult Function(AuthErrorEnum error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_UnauthenticatedState value) unuthenticated,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticatedState value)? authenticated,
    TResult? Function(_UnauthenticatedState value)? unuthenticated,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_UnauthenticatedState value)? unuthenticated,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements UserState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthErrorEnum error});
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_ErrorState>
    implements _$$_ErrorStateCopyWith<$Res> {
  __$$_ErrorStateCopyWithImpl(
      _$_ErrorState _value, $Res Function(_$_ErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_ErrorState(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AuthErrorEnum,
    ));
  }
}

/// @nodoc

class _$_ErrorState implements _ErrorState {
  const _$_ErrorState({required this.error});

  @override
  final AuthErrorEnum error;

  @override
  String toString() {
    return 'UserState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      __$$_ErrorStateCopyWithImpl<_$_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unuthenticated,
    required TResult Function() loading,
    required TResult Function(AuthErrorEnum error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? unuthenticated,
    TResult? Function()? loading,
    TResult? Function(AuthErrorEnum error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unuthenticated,
    TResult Function()? loading,
    TResult Function(AuthErrorEnum error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_UnauthenticatedState value) unuthenticated,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticatedState value)? authenticated,
    TResult? Function(_UnauthenticatedState value)? unuthenticated,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_UnauthenticatedState value)? unuthenticated,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements UserState {
  const factory _ErrorState({required final AuthErrorEnum error}) =
      _$_ErrorState;

  AuthErrorEnum get error;
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
