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

import '../screens/home/home_page.dart' as _i1;
import '../screens/photo/photo_details_page.dart' as _i6;
import '../screens/photo/photo_list_page.dart' as _i5;
import '../screens/settings/settings_page.dart' as _i4;
import '../screens/todo/todo_page.dart' as _i3;

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
      final args = routeData.argsAs<PhotoListRouteArgs>(
          orElse: () => const PhotoListRouteArgs());
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.PhotoListPage(key: args.key));
    },
    PhotoDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<PhotoDetailsRouteArgs>(
          orElse: () => PhotoDetailsRouteArgs(id: pathParams.getInt('id', -1)));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.PhotoDetailsPage(key: args.key, id: args.id));
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
                    path: ':id',
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
class PhotoListRoute extends _i2.PageRouteInfo<PhotoListRouteArgs> {
  PhotoListRoute({_i7.Key? key})
      : super(PhotoListRoute.name,
            path: '', args: PhotoListRouteArgs(key: key));

  static const String name = 'PhotoListRoute';
}

class PhotoListRouteArgs {
  const PhotoListRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'PhotoListRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.PhotoDetailsPage]
class PhotoDetailsRoute extends _i2.PageRouteInfo<PhotoDetailsRouteArgs> {
  PhotoDetailsRoute({_i7.Key? key, int id = -1})
      : super(PhotoDetailsRoute.name,
            path: ':id',
            args: PhotoDetailsRouteArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'PhotoDetailsRoute';
}

class PhotoDetailsRouteArgs {
  const PhotoDetailsRouteArgs({this.key, this.id = -1});

  final _i7.Key? key;

  final int id;

  @override
  String toString() {
    return 'PhotoDetailsRouteArgs{key: $key, id: $id}';
  }
}
