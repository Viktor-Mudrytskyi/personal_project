import 'package:auto_route/auto_route.dart';

import '../../features/features.dart';
import '../core.dart';

class AuthGuard extends AutoRouteGuard {
  final AuthUseCase _authUseCase;
  const AuthGuard({required AuthUseCase authUseCase})
      : _authUseCase = authUseCase;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (_authUseCase.isLoggedIn) {
      resolver.next();
    } else {
      router.replaceAll([const LoginRoute()]);
    }
  }
}
