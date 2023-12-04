import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/features.dart';
import '../../features/presentation/home/widgets/create_to_do.dart';
import '../core.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        ///Is initial route, if user is not logged in, reroutes to login route.
        ///Initial state of user authentication is decided in main.
        CustomRoute(
          page: HomeRoute.page,
          guards: [injector<AuthGuard>()],
          transitionsBuilder: TransitionsBuilders.slideLeft,
          durationInMilliseconds: 200,
          initial: true,
        ),
        CustomRoute(
          page: LoginRoute.page,
          transitionsBuilder: TransitionsBuilders.slideRight,
          durationInMilliseconds: 200,
        ),
        AutoRoute(page: CameraRoute.page)
      ];
}
