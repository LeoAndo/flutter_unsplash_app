import 'package:auto_route/auto_route.dart';
import 'package:simple_app/screens/home/home_page.dart';
import 'package:simple_app/screens/photo/photo_details_page.dart';
import 'package:simple_app/screens/photo/photo_list_page.dart';
import 'package:simple_app/screens/settings/settings_page.dart';
import 'package:simple_app/screens/todo/todo_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page|Dialog,Route',
  routes: <AutoRoute>[
    AutoRoute<String>(
      path: '/',
      initial: true,
      page: HomePage,
      children: [
        AutoRoute(
          path: 'photo',
          page: EmptyRouterPage,
          name: 'PhotoTab',
          children: [
            AutoRoute(
              path: '',
              page: PhotoListPage,
            ),
            AutoRoute(
              path: ':username',
              page: PhotoDetailsPage,
              meta: {'hideBottomNav': true},
            ),
          ],
        ),
        AutoRoute(
          path: 'todo',
          page: TodoPage,
          name: 'TodoTab',
        ),
        AutoRoute(
          path: 'settings',
          page: SettingsPage,
          name: 'SettingsTab',
        ),
      ],
    ),
  ],
)
class $AppRouter {}
