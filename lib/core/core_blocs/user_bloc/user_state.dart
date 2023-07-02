part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.authenticated({required User userInfo}) =
      AuthenticatedState;
  const factory UserState.unuthenticated() = UnauthenticatedState;
  const factory UserState.loading() = LoadingState;
  const factory UserState.error({required AuthErrorEnum error}) = ErrorState;
}
