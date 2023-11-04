part of 'user_bloc.dart';

class UserEvent {}

class ResolveStateUserEvent extends UserEvent {
  ResolveStateUserEvent();
}

class OnInitUserEvent extends UserEvent {}

class LogOutUserEvent extends UserEvent {
  LogOutUserEvent();
}
