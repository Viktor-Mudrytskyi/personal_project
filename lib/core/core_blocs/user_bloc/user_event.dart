part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.figureCurrentState(
      {@Default(true) bool showSpinner}) = _UserFigureStateEvent;
  const factory UserEvent.logout() = _UserLogOutEvent;
  const factory UserEvent.init() = _UserInitEvent;
}
