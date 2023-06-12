import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../core.dart';

class RouterObserver implements AutoRouterObserver {
  static const String _name = 'ROUTE INFO';
  static final _router = injector<AppRouter>();

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {}

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {}

  @override
  void didPop(Route route, Route? previousRoute) {
    log(
      'Current path: ${_router.current.parent?.router.currentPath}',
      name: _name,
    );
    log(
      'Current name: ${route.data?.name}',
      name: _name,
    );
    log(
      'Previous name: ${previousRoute?.data?.name}',
      name: _name,
    );
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    log(
      'Current path: ${_router.current.parent?.router.currentPath}',
      name: _name,
    );
    log(
      'Current name: ${route.data?.name}',
      name: _name,
    );
    log(
      'Previous name: ${previousRoute?.data?.name}',
      name: _name,
    );
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    log(
      'Current path: ${_router.current.parent?.router.currentPath}',
      name: _name,
    );
    log(
      'Current name: ${route.data?.name}',
      name: _name,
    );
    log(
      'Previous name: ${previousRoute?.data?.name}',
      name: _name,
    );
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    log(
      'Current path: ${_router.current.parent?.router.currentPath}',
      name: _name,
    );
    log(
      'Current name: ${newRoute?.data?.name}',
      name: _name,
    );
    log(
      'Previous name: ${oldRoute?.data?.name}',
      name: _name,
    );
  }

  @override
  void didStartUserGesture(Route route, Route? previousRoute) {}

  @override
  void didStopUserGesture() {}

  @override
  NavigatorState? get navigator => null;
}
