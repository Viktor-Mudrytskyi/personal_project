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
  final PreferncesService _preferncesService;

  UserBloc({
    required AuthUseCase authUseCase,
    required PreferncesService preferncesService,
  })  : _authUseCase = authUseCase,
        _preferncesService = preferncesService,
        super(const UserState.unuthenticated()) {
    on<_UserLogOutEvent>(_onLogOutEvent);
    on<_UserFigureStateEvent>(_onUserFigureState);
  }

  Future<void> _onLogOutEvent(
    _UserLogOutEvent event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserState.loading());
    final result = await _authUseCase.logOut();

    result.fold(
      (l) => emit(const UserState.error(error: AuthErrorEnum.invalidEmail)),
      (r) async {
        emit(const UserState.unuthenticated());
        await _preferncesService.clearAll();
      },
    );
  }

  Future<void> _onUserFigureState(
    _UserFigureStateEvent event,
    Emitter<UserState> emit,
  ) async {
    if (event.showSpinner) {
      emit(const UserState.loading());
    }

    if (_authUseCase.isLoggedIn) {
      emit(UserState.authenticated(userInfo: _authUseCase.userInfo!));
    } else {
      emit(const UserState.unuthenticated());
    }
  }
}
