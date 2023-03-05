import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_app/data/preferences/app_preferences_manager.dart';

import '../../domain/repositories/user_settings_repository.dart';

final userSettingsRepositoryProvider =
    Provider((ref) => UserSettingsRepositoryImpl(ref.read));

class UserSettingsRepositoryImpl implements UserSettingsRepository {
  UserSettingsRepositoryImpl(this._reader);

  final Reader _reader;

  late final AppPreferencesManager _dataSource =
      _reader(appPreferencesManagerProvider);

  @override
  Future<String> getUserName() {
    return _dataSource.getUserName();
  }

  @override
  Future<void> setUserName(String userName) {
    return _dataSource.setUserName(userName);
  }
}
