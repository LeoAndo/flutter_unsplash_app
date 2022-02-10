import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_app/data/repository/user_settings_repository.dart';
import 'package:simple_app/data/repository/user_settings_repository_impl.dart';

final settingsViewModelProvider =
    ChangeNotifierProvider((ref) => SettingsViewModel(ref.read));

class SettingsViewModel extends ChangeNotifier {
  SettingsViewModel(this._reader);

  final Reader _reader;

  late final UserSettingsRepository _repository =
      _reader(userSettingsRepositoryProvider);

  String? _username;
  String? get username => _username;

  Future<void> fetchUserName() {
    return _repository
        .getUserName()
        .then((value) => _username = value)
        .whenComplete(notifyListeners);
  }

  Future<void> setUserName(String username) {
    return _repository.setUserName(username).then((value) => fetchUserName());
  }
}
