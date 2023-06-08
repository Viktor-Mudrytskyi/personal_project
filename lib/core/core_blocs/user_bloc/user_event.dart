part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.register(
      {required String email, required String password}) = _RegisterEvent;
  const factory UserEvent.logIn(
      {required String email, required String password}) = _LogInEvent;
  const factory UserEvent.logout() = _LogOutEvent;
}
