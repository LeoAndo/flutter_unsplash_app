import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_app/router/app_router.dart';
// import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'pages/settings/settings_viewmodel.dart';
import 'ui/theme/app_theme.dart';

class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final themeMode = ref.watch(appThemeModeProvider);
    final appRouter = useMemoized(() => AppRouter());

    final viewModel = ref.read(settingsViewModelProvider);
    useFuture(useMemoized(() {
      viewModel.setUserName("LeoLeo");
    }));

    return MaterialApp.router(
      theme: theme.data,
      darkTheme: AppTheme.dark().data,
      themeMode: themeMode,
      // localizationsDelegates: L10n.localizationsDelegates,
      // supportedLocales: L10n.supportedLocales,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
    );
  }
}
