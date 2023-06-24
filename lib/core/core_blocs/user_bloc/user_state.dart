part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.authenticated({required User userInfo}) =
      _AuthenticatedState;
  const factory UserState.unuthenticated() = _UnauthenticatedState;
  const factory UserState.loading() = _LoadingState;
  const factory UserState.error({required AuthErrorEnum error}) = _ErrorState;
}
