import 'package:auto_route/auto_route.dart';

import '../../features/features.dart';
import '../core.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
        ),
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          guards: [AuthGuard()],
        )
      ];
}
