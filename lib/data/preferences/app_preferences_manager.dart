import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final appPreferencesManagerProvider =
    Provider((_) => AppPreferencesManager.getInstance());

class AppPreferencesManager {
  late final Future<SharedPreferences> _prefs;
  AppPreferencesManager._() {
    _prefs = SharedPreferences.getInstance();
  }

  Future<String> getUserName() async {
    final pref = await _prefs;
    return pref.getString('username') ?? "";
  }

  Future<void> setUserName(String username) async {
    final pref = await _prefs;
    pref.setString('username', username);
  }

  static AppPreferencesManager getInstance() => AppPreferencesManager._();
}
