///
/// [PreferencesLocalDataSource]
///
abstract class PreferencesLocalDataSource {
  /// save theme in local storage
  Future<void> saveTheme(String value);

  /// get saved theme from local storage
  Future<String?> getCurrentTheme();

  ///
  Future<void> clearPreferences();
}
