// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i7;

import '../pages/home/home_page.dart' as _i1;
import '../pages/photo/photo_details_page.dart' as _i6;
import '../pages/photo/photo_list_page.dart' as _i5;
import '../pages/settings/settings_page.dart' as _i4;
import '../pages/todo/todo_page.dart' as _i3;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<String>(
          routeData: routeData, child: const _i1.HomePage());
    },
    PhotoTab.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    TodoTab.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.TodoPage());
    },
    SettingsTab.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SettingsPage());
    },
    PhotoListRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.PhotoListPage());
    },
    PhotoDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<PhotoDetailsRouteArgs>(
          orElse: () => PhotoDetailsRouteArgs(
              username: pathParams.getString('username', "unKnown")));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.PhotoDetailsPage(key: args.key, username: args.username));
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(HomeRoute.name, path: '/', children: [
          _i2.RouteConfig(PhotoTab.name,
              path: 'photo',
              parent: HomeRoute.name,
              children: [
                _i2.RouteConfig(PhotoListRoute.name,
                    path: '', parent: PhotoTab.name),
                _i2.RouteConfig(PhotoDetailsRoute.name,
                    path: ':username',
                    parent: PhotoTab.name,
                    meta: <String, dynamic>{'hideBottomNav': true})
              ]),
          _i2.RouteConfig(TodoTab.name, path: 'todo', parent: HomeRoute.name),
          _i2.RouteConfig(SettingsTab.name,
              path: 'settings', parent: HomeRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute({List<_i2.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class PhotoTab extends _i2.PageRouteInfo<void> {
  const PhotoTab({List<_i2.PageRouteInfo>? children})
      : super(PhotoTab.name, path: 'photo', initialChildren: children);

  static const String name = 'PhotoTab';
}

/// generated route for
/// [_i3.TodoPage]
class TodoTab extends _i2.PageRouteInfo<void> {
  const TodoTab() : super(TodoTab.name, path: 'todo');

  static const String name = 'TodoTab';
}

/// generated route for
/// [_i4.SettingsPage]
class SettingsTab extends _i2.PageRouteInfo<void> {
  const SettingsTab() : super(SettingsTab.name, path: 'settings');

  static const String name = 'SettingsTab';
}

/// generated route for
/// [_i5.PhotoListPage]
class PhotoListRoute extends _i2.PageRouteInfo<void> {
  const PhotoListRoute() : super(PhotoListRoute.name, path: '');

  static const String name = 'PhotoListRoute';
}

/// generated route for
/// [_i6.PhotoDetailsPage]
class PhotoDetailsRoute extends _i2.PageRouteInfo<PhotoDetailsRouteArgs> {
  PhotoDetailsRoute({_i7.Key? key, String username = "unKnown"})
      : super(PhotoDetailsRoute.name,
            path: ':username',
            args: PhotoDetailsRouteArgs(key: key, username: username),
            rawPathParams: {'username': username});

  static const String name = 'PhotoDetailsRoute';
}

class PhotoDetailsRouteArgs {
  const PhotoDetailsRouteArgs({this.key, this.username = "unKnown"});

  final _i7.Key? key;

  final String username;

  @override
  String toString() {
    return 'PhotoDetailsRouteArgs{key: $key, username: $username}';
  }
}
