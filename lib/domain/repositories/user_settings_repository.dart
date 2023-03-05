abstract class UserSettingsRepository {
  Future<void> setUserName(String userName);
  Future<String> getUserName();
}
