import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class RouterObserver implements AutoRouterObserver {
  static const String _name = 'ROUTE INFO';

  void _logger(Route? route, Route? previousRoute) {
    log(
      'Current path: ${route?.data?.path}',
      name: _name,
    );
    log(
      'Current name: ${route?.data?.name}',
      name: _name,
    );
    log(
      'Previous name: ${previousRoute?.data?.name}',
      name: _name,
    );
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {}

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {}

  @override
  void didPop(Route route, Route? previousRoute) {
    _logger(route, previousRoute);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    _logger(route, previousRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    // _logger(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    // _logger(newRoute, oldRoute);
  }

  @override
  void didStartUserGesture(Route route, Route? previousRoute) {}

  @override
  void didStopUserGesture() {}

  @override
  NavigatorState? get navigator => null;
}
