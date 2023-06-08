import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../features/features.dart';
import '../../core.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final AuthUseCase _authUseCase;

  UserBloc({required AuthUseCase authUseCase})
      : _authUseCase = authUseCase,
        super(const UserState.unuthenticated()) {
    on<_RegisterEvent>(_onRegisterEvent);
    on<_LogInEvent>(_onLogInEvent);
    on<_LogOutEvent>(_onLogOutEvent);
  }

  Future<void> _onRegisterEvent(
    _RegisterEvent event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserState.loading());
    final result = await _authUseCase.registerUserWEmailAndPassword(
      email: event.email,
      password: event.password,
    );
    emit(
      result.fold(
        (l) => UserState.error(error: AuthErrorEnum.error1),
        (r) => UserState.authenticated(),
      ),
    );
  }

  Future<void> _onLogInEvent(
    _LogInEvent event,
    Emitter<UserState> emit,
  ) async {}

  Future<void> _onLogOutEvent(
    _LogOutEvent event,
    Emitter<UserState> emit,
  ) async {}
}
