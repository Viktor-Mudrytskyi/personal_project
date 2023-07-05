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
    required TResult Function(bool showSpinner) figureCurrentState,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showSpinner)? figureCurrentState,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showSpinner)? figureCurrentState,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserFigureStateEvent value) figureCurrentState,
    required TResult Function(_UserLogOutEvent value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserFigureStateEvent value)? figureCurrentState,
    TResult? Function(_UserLogOutEvent value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserFigureStateEvent value)? figureCurrentState,
    TResult Function(_UserLogOutEvent value)? logout,
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
abstract class _$$_UserFigureStateEventCopyWith<$Res> {
  factory _$$_UserFigureStateEventCopyWith(_$_UserFigureStateEvent value,
          $Res Function(_$_UserFigureStateEvent) then) =
      __$$_UserFigureStateEventCopyWithImpl<$Res>;
  @useResult
  $Res call({bool showSpinner});
}

/// @nodoc
class __$$_UserFigureStateEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_UserFigureStateEvent>
    implements _$$_UserFigureStateEventCopyWith<$Res> {
  __$$_UserFigureStateEventCopyWithImpl(_$_UserFigureStateEvent _value,
      $Res Function(_$_UserFigureStateEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showSpinner = null,
  }) {
    return _then(_$_UserFigureStateEvent(
      showSpinner: null == showSpinner
          ? _value.showSpinner
          : showSpinner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UserFigureStateEvent implements _UserFigureStateEvent {
  const _$_UserFigureStateEvent({this.showSpinner = true});

  @override
  @JsonKey()
  final bool showSpinner;

  @override
  String toString() {
    return 'UserEvent.figureCurrentState(showSpinner: $showSpinner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserFigureStateEvent &&
            (identical(other.showSpinner, showSpinner) ||
                other.showSpinner == showSpinner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showSpinner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserFigureStateEventCopyWith<_$_UserFigureStateEvent> get copyWith =>
      __$$_UserFigureStateEventCopyWithImpl<_$_UserFigureStateEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showSpinner) figureCurrentState,
    required TResult Function() logout,
  }) {
    return figureCurrentState(showSpinner);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showSpinner)? figureCurrentState,
    TResult? Function()? logout,
  }) {
    return figureCurrentState?.call(showSpinner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showSpinner)? figureCurrentState,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (figureCurrentState != null) {
      return figureCurrentState(showSpinner);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserFigureStateEvent value) figureCurrentState,
    required TResult Function(_UserLogOutEvent value) logout,
  }) {
    return figureCurrentState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserFigureStateEvent value)? figureCurrentState,
    TResult? Function(_UserLogOutEvent value)? logout,
  }) {
    return figureCurrentState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserFigureStateEvent value)? figureCurrentState,
    TResult Function(_UserLogOutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (figureCurrentState != null) {
      return figureCurrentState(this);
    }
    return orElse();
  }
}

abstract class _UserFigureStateEvent implements UserEvent {
  const factory _UserFigureStateEvent({final bool showSpinner}) =
      _$_UserFigureStateEvent;

  bool get showSpinner;
  @JsonKey(ignore: true)
  _$$_UserFigureStateEventCopyWith<_$_UserFigureStateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserLogOutEventCopyWith<$Res> {
  factory _$$_UserLogOutEventCopyWith(
          _$_UserLogOutEvent value, $Res Function(_$_UserLogOutEvent) then) =
      __$$_UserLogOutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserLogOutEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_UserLogOutEvent>
    implements _$$_UserLogOutEventCopyWith<$Res> {
  __$$_UserLogOutEventCopyWithImpl(
      _$_UserLogOutEvent _value, $Res Function(_$_UserLogOutEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserLogOutEvent implements _UserLogOutEvent {
  const _$_UserLogOutEvent();

  @override
  String toString() {
    return 'UserEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserLogOutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showSpinner) figureCurrentState,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showSpinner)? figureCurrentState,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showSpinner)? figureCurrentState,
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
    required TResult Function(_UserFigureStateEvent value) figureCurrentState,
    required TResult Function(_UserLogOutEvent value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserFigureStateEvent value)? figureCurrentState,
    TResult? Function(_UserLogOutEvent value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserFigureStateEvent value)? figureCurrentState,
    TResult Function(_UserLogOutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _UserLogOutEvent implements UserEvent {
  const factory _UserLogOutEvent() = _$_UserLogOutEvent;
}

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User userInfo) authenticated,
    required TResult Function() unuthenticated,
    required TResult Function() loading,
    required TResult Function(AuthErrorEnum error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User userInfo)? authenticated,
    TResult? Function()? unuthenticated,
    TResult? Function()? loading,
    TResult? Function(AuthErrorEnum error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User userInfo)? authenticated,
    TResult Function()? unuthenticated,
    TResult Function()? loading,
    TResult Function(AuthErrorEnum error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnauthenticatedState value) unuthenticated,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(UnauthenticatedState value)? unuthenticated,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnauthenticatedState value)? unuthenticated,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
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
abstract class _$$AuthenticatedStateCopyWith<$Res> {
  factory _$$AuthenticatedStateCopyWith(_$AuthenticatedState value,
          $Res Function(_$AuthenticatedState) then) =
      __$$AuthenticatedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({User userInfo});
}

/// @nodoc
class __$$AuthenticatedStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$AuthenticatedState>
    implements _$$AuthenticatedStateCopyWith<$Res> {
  __$$AuthenticatedStateCopyWithImpl(
      _$AuthenticatedState _value, $Res Function(_$AuthenticatedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = null,
  }) {
    return _then(_$AuthenticatedState(
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AuthenticatedState implements AuthenticatedState {
  const _$AuthenticatedState({required this.userInfo});

  @override
  final User userInfo;

  @override
  String toString() {
    return 'UserState.authenticated(userInfo: $userInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedState &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedStateCopyWith<_$AuthenticatedState> get copyWith =>
      __$$AuthenticatedStateCopyWithImpl<_$AuthenticatedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User userInfo) authenticated,
    required TResult Function() unuthenticated,
    required TResult Function() loading,
    required TResult Function(AuthErrorEnum error) error,
  }) {
    return authenticated(userInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User userInfo)? authenticated,
    TResult? Function()? unuthenticated,
    TResult? Function()? loading,
    TResult? Function(AuthErrorEnum error)? error,
  }) {
    return authenticated?.call(userInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User userInfo)? authenticated,
    TResult Function()? unuthenticated,
    TResult Function()? loading,
    TResult Function(AuthErrorEnum error)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(userInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnauthenticatedState value) unuthenticated,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(UnauthenticatedState value)? unuthenticated,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnauthenticatedState value)? unuthenticated,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthenticatedState implements UserState {
  const factory AuthenticatedState({required final User userInfo}) =
      _$AuthenticatedState;

  User get userInfo;
  @JsonKey(ignore: true)
  _$$AuthenticatedStateCopyWith<_$AuthenticatedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthenticatedStateCopyWith<$Res> {
  factory _$$UnauthenticatedStateCopyWith(_$UnauthenticatedState value,
          $Res Function(_$UnauthenticatedState) then) =
      __$$UnauthenticatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UnauthenticatedState>
    implements _$$UnauthenticatedStateCopyWith<$Res> {
  __$$UnauthenticatedStateCopyWithImpl(_$UnauthenticatedState _value,
      $Res Function(_$UnauthenticatedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthenticatedState implements UnauthenticatedState {
  const _$UnauthenticatedState();

  @override
  String toString() {
    return 'UserState.unuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User userInfo) authenticated,
    required TResult Function() unuthenticated,
    required TResult Function() loading,
    required TResult Function(AuthErrorEnum error) error,
  }) {
    return unuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User userInfo)? authenticated,
    TResult? Function()? unuthenticated,
    TResult? Function()? loading,
    TResult? Function(AuthErrorEnum error)? error,
  }) {
    return unuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User userInfo)? authenticated,
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
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnauthenticatedState value) unuthenticated,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
  }) {
    return unuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(UnauthenticatedState value)? unuthenticated,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
  }) {
    return unuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnauthenticatedState value)? unuthenticated,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (unuthenticated != null) {
      return unuthenticated(this);
    }
    return orElse();
  }
}

abstract class UnauthenticatedState implements UserState {
  const factory UnauthenticatedState() = _$UnauthenticatedState;
}

/// @nodoc
abstract class _$$LoadingStateCopyWith<$Res> {
  factory _$$LoadingStateCopyWith(
          _$LoadingState value, $Res Function(_$LoadingState) then) =
      __$$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$LoadingState>
    implements _$$LoadingStateCopyWith<$Res> {
  __$$LoadingStateCopyWithImpl(
      _$LoadingState _value, $Res Function(_$LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingState implements LoadingState {
  const _$LoadingState();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User userInfo) authenticated,
    required TResult Function() unuthenticated,
    required TResult Function() loading,
    required TResult Function(AuthErrorEnum error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User userInfo)? authenticated,
    TResult? Function()? unuthenticated,
    TResult? Function()? loading,
    TResult? Function(AuthErrorEnum error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User userInfo)? authenticated,
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
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnauthenticatedState value) unuthenticated,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(UnauthenticatedState value)? unuthenticated,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnauthenticatedState value)? unuthenticated,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements UserState {
  const factory LoadingState() = _$LoadingState;
}

/// @nodoc
abstract class _$$ErrorStateCopyWith<$Res> {
  factory _$$ErrorStateCopyWith(
          _$ErrorState value, $Res Function(_$ErrorState) then) =
      __$$ErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthErrorEnum error});
}

/// @nodoc
class __$$ErrorStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$ErrorState>
    implements _$$ErrorStateCopyWith<$Res> {
  __$$ErrorStateCopyWithImpl(
      _$ErrorState _value, $Res Function(_$ErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorState(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AuthErrorEnum,
    ));
  }
}

/// @nodoc

class _$ErrorState implements ErrorState {
  const _$ErrorState({required this.error});

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
            other is _$ErrorState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateCopyWith<_$ErrorState> get copyWith =>
      __$$ErrorStateCopyWithImpl<_$ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User userInfo) authenticated,
    required TResult Function() unuthenticated,
    required TResult Function() loading,
    required TResult Function(AuthErrorEnum error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User userInfo)? authenticated,
    TResult? Function()? unuthenticated,
    TResult? Function()? loading,
    TResult? Function(AuthErrorEnum error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User userInfo)? authenticated,
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
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnauthenticatedState value) unuthenticated,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(UnauthenticatedState value)? unuthenticated,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnauthenticatedState value)? unuthenticated,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements UserState {
  const factory ErrorState({required final AuthErrorEnum error}) = _$ErrorState;

  AuthErrorEnum get error;
  @JsonKey(ignore: true)
  _$$ErrorStateCopyWith<_$ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
