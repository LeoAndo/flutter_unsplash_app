import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_app/pages/settings/settings_viewmodel.dart';
import 'package:simple_app/ui/theme/app_theme.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(appThemeModeProvider);
    bool _themeSwitchSelected;
    switch (themeMode) {
      case ThemeMode.dark:
        _themeSwitchSelected = false;
        break;
      case ThemeMode.light:
        _themeSwitchSelected = true;
        break;
      default:
        _themeSwitchSelected = false;
    }

    final viewModel = ref.read(settingsViewModelProvider);
    final username =
        ref.watch(settingsViewModelProvider.select((value) => value.username));
    useFuture(
      useMemoized(() {
        viewModel.fetchUserName();
      }),
    );

    return Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            SwitchListTile(
              value: _themeSwitchSelected,
              title: const Text('Theme Mode'),
              subtitle: const Text('dark / light'),
              onChanged: (bool newValue) {
                ThemeMode mode;
                if (newValue) {
                  mode = ThemeMode.light;
                } else {
                  mode = ThemeMode.dark;
                }
                ref.read(appThemeModeProvider.notifier).state = mode;
              },
            ),
            ListTile(
              title: const Text("User Name"),
              subtitle: Text('$username'),
            ),
          ],
        ));
  }
}
