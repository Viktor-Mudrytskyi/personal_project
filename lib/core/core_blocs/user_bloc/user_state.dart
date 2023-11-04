part of 'user_bloc.dart';

sealed class UserState {
  T map<T>({
    required T Function(AuthenticatedUserState authenticated) authenticated,
    required T Function(UnauthenticatedUserState unauthenticated)
        unauthenticated,
    required T Function(LoadingUserState loading) loading,
    required T Function(ErrorUserState error) error,
  }) {
    return switch (this) {
      AuthenticatedUserState() => authenticated(this as AuthenticatedUserState),
      UnauthenticatedUserState() =>
        unauthenticated(this as UnauthenticatedUserState),
      LoadingUserState() => loading(this as LoadingUserState),
      ErrorUserState() => error(this as ErrorUserState),
    };
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function(AuthenticatedUserState authenticated)? authenticated,
    T Function(UnauthenticatedUserState unauthenticated)? unauthenticated,
    T Function(LoadingUserState loading)? loading,
    T Function(ErrorUserState error)? error,
  }) {
    return switch (this) {
      AuthenticatedUserState() => authenticated != null
          ? authenticated(this as AuthenticatedUserState)
          : orElse(),
      UnauthenticatedUserState() => unauthenticated != null
          ? unauthenticated(this as UnauthenticatedUserState)
          : orElse(),
      LoadingUserState() =>
        loading != null ? loading(this as LoadingUserState) : orElse(),
      ErrorUserState() =>
        error != null ? error(this as ErrorUserState) : orElse(),
    };
  }

  T? mapOrNull<T>({
    T Function(AuthenticatedUserState authenticated)? authenticated,
    T Function(UnauthenticatedUserState unauthenticated)? unauthenticated,
    T Function(LoadingUserState loading)? loading,
    T Function(ErrorUserState error)? error,
  }) {
    return switch (this) {
      AuthenticatedUserState() => authenticated != null
          ? authenticated(this as AuthenticatedUserState)
          : null,
      UnauthenticatedUserState() => unauthenticated != null
          ? unauthenticated(this as UnauthenticatedUserState)
          : null,
      LoadingUserState() =>
        loading != null ? loading(this as LoadingUserState) : null,
      ErrorUserState() => error != null ? error(this as ErrorUserState) : null,
    };
  }
}

class AuthenticatedUserState extends UserState {
  final User userInfo;

  AuthenticatedUserState({required this.userInfo});
}

class UnauthenticatedUserState extends UserState {}

class LoadingUserState extends UserState {}

class ErrorUserState extends UserState {}
