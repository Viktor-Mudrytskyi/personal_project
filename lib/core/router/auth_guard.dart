import 'package:auto_route/auto_route.dart';

import '../../features/features.dart';

class AuthGuard extends AutoRouteGuard {
  final AuthUseCase _authUseCase;
  const AuthGuard({required AuthUseCase authUseCase})
      : _authUseCase = authUseCase;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {}
}
