// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:portfolio/ui/hobby/hobby_page.dart' as _i3;
import 'package:portfolio/ui/home/home_page.dart' as _i2;
import 'package:portfolio/ui/layout/master_page.dart' as _i1;
import 'package:portfolio/ui/listed_issues/listed_issues.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MasterRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.MasterPage());
    },
    HomeRouter.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    HobbyRouter.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.HobbyPage());
    },
    ListedIssuesRouter.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.ListedIssuesPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(MasterRoute.name, path: '/', children: [
          _i5.RouteConfig('#redirect',
              path: '',
              parent: MasterRoute.name,
              redirectTo: 'home',
              fullMatch: true),
          _i5.RouteConfig(HomeRouter.name,
              path: 'home', parent: MasterRoute.name),
          _i5.RouteConfig(HobbyRouter.name,
              path: 'hobby', parent: MasterRoute.name),
          _i5.RouteConfig(ListedIssuesRouter.name,
              path: 'listedIssues', parent: MasterRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.MasterPage]
class MasterRoute extends _i5.PageRouteInfo<void> {
  const MasterRoute({List<_i5.PageRouteInfo>? children})
      : super(MasterRoute.name, path: '/', initialChildren: children);

  static const String name = 'MasterRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRouter extends _i5.PageRouteInfo<void> {
  const HomeRouter() : super(HomeRouter.name, path: 'home');

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i3.HobbyPage]
class HobbyRouter extends _i5.PageRouteInfo<void> {
  const HobbyRouter() : super(HobbyRouter.name, path: 'hobby');

  static const String name = 'HobbyRouter';
}

/// generated route for
/// [_i4.ListedIssuesPage]
class ListedIssuesRouter extends _i5.PageRouteInfo<void> {
  const ListedIssuesRouter()
      : super(ListedIssuesRouter.name, path: 'listedIssues');

  static const String name = 'ListedIssuesRouter';
}
