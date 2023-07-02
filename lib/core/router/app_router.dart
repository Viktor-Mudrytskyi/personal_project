import 'package:auto_route/auto_route.dart';

import '../../features/features.dart';
import '../core.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          page: HomeRoute.page,
          guards: [injector<AuthGuard>()],
          transitionsBuilder: TransitionsBuilders.slideLeft,
          durationInMilliseconds: 200,
        ),
        CustomRoute(
          page: LoginRoute.page,
          initial: true,
          transitionsBuilder: TransitionsBuilders.slideRight,
          durationInMilliseconds: 200,
        ),
      ];
}
