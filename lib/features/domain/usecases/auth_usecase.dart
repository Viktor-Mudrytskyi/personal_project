import 'dart:developer';

import 'package:personal_project/features/domain/domain.dart';

abstract class AuthUseCase {
  Future<void> registerUserWEmailAndPassword({
    required String email,
    required String password,
  });
  Future<void> signInWEmailAndPassword({
    required String email,
    required String password,
  });
  Future<void> logOut();
}

class AuthUseCaseImpl implements AuthUseCase {
  final AuthRepository _authRepository;
  const AuthUseCaseImpl({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;
  @override
  Future<void> logOut() async {
    //TODO add trycatch
    final res = await _authRepository.logOut();
  }

  @override
  Future<void> registerUserWEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final res = await _authRepository.logOut();
  }

  @override
  Future<void> signInWEmailAndPassword({
    required String email,
    required String password,
  }) async {}
}
