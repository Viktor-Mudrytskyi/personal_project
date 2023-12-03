import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../features/features.dart';
import '../../core.dart';

part 'user_state.dart';
part 'user_event.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final AuthUseCase _authUseCase;
  final SecureStorageManager _storage;

  UserBloc({
    required AuthUseCase authUseCase,
    required SecureStorageManager storage,
  })  : _authUseCase = authUseCase,
        _storage = storage,
        super(UnauthenticatedUserState()) {
    on<LogOutUserEvent>(_onLogOut);
    on<ResolveStateUserEvent>(_onResolveState);
    on<OnInitUserEvent>(_onInit);
  }

  Future<void> _onLogOut(
    LogOutUserEvent event,
    Emitter<UserState> emit,
  ) async {
    emit(LoadingUserState());
    final result = await _authUseCase.logOut();

    result.fold(
      (l) => emit(ErrorUserState()),
      (r) async {
        emit(UnauthenticatedUserState());
        await _storage.deleteAll();
      },
    );
  }

  Future<void> _onInit(
    OnInitUserEvent event,
    Emitter<UserState> emit,
  ) async {
    emit(LoadingUserState());
    if (!_authUseCase.isLoggedIn) {
      emit(UnauthenticatedUserState());
    } else {
      // final res = await _authUseCase.logOut();
      // res.fold(
      //   (l) => emit(ErrorUserState()),
      //   (r) => emit(UnauthenticatedUserState()),
      // );
      emit(AuthenticatedUserState(userInfo: _authUseCase.userInfo!));
    }
  }

  Future<void> _onResolveState(
    ResolveStateUserEvent event,
    Emitter<UserState> emit,
  ) async {
    emit(LoadingUserState());
    if (_authUseCase.isLoggedIn) {
      emit(AuthenticatedUserState(userInfo: _authUseCase.userInfo!));
    } else {
      emit(UnauthenticatedUserState());
    }
  }
}
