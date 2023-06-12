import 'dart:developer';

import 'package:auto_route/auto_route.dart';

import '../../features/features.dart';
import '../core.dart';

class AuthGuard extends AutoRouteGuard {
  final AuthUseCase _authUseCase;
  const AuthGuard({required AuthUseCase authUseCase})
      : _authUseCase = authUseCase;

  static const String _name = 'AUTH GUARD ROUTE INFO';

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (_authUseCase.isLoggedIn) {
      resolver.next();
    } else {
      router.replaceAll([const LoginRoute()]);
      log('Routing blocked by AuthGuard, redirected to login route',
          name: _name);
    }
  }
}
