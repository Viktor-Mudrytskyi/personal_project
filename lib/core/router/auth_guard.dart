import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../core.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (FirebaseAuth.instance.currentUser != null) {
      resolver.next();
    } else {
      router.replaceAll([const LoginRoute()]);
    }
  }
}
