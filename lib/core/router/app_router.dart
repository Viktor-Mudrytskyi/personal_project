import 'package:auto_route/auto_route.dart';

import '../../features/features.dart';
import '../core.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        ///Auth guard ensures that logged in user is directed to home.
        ///Otherwise to login screen
        CustomRoute(
          page: HomeRoute.page,
          guards: [injector<AuthGuard>()],
          initial: true,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          durationInMilliseconds: 100,
        ),
        CustomRoute(
          page: LoginRoute.page,
          transitionsBuilder: TransitionsBuilders.slideRight,
          durationInMilliseconds: 100,
        ),
      ];
}
