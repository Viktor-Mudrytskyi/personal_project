import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
    on<_LogOutEvent>(_onLogOutEvent);
    on<_InitEvent>(_onInit);
  }

  Future<void> _onLogOutEvent(
    _LogOutEvent event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserState.loading());
    final result = await _authUseCase.logOut();
    emit(
      result.fold(
        (l) => const UserState.error(error: AuthErrorEnum.invalidEmail),
        (r) => const UserState.unuthenticated(),
      ),
    );
  }

  void _onInit(
    _InitEvent event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserState.loading());
    final result = _authUseCase.isLoggedIn;
    if (result) {
      emit(UserState.authenticated(userInfo: _authUseCase.userInfo!));
    } else {
      emit(const UserState.unuthenticated());
    }
  }
}
