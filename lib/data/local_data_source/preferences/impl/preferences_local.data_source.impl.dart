import 'package:init/data/local_data_source/preferences/preferences_local.data_source.dart';
import 'package:init/data/storage/hive_secure_storage.dart';

///
/// [PreferencesLocalDataSourcesImpl]
///
class PreferencesLocalDataSourcesImpl implements PreferencesLocalDataSource {
  /// Hive secure storage
  final HiveSecureStorage _storage;

  /// Theme key
  static const String _themeKey = 'theme_appearance_key';

  ///
  /// Constructor
  ///
  PreferencesLocalDataSourcesImpl(this._storage);

  ///
  /// Get current theme
  ///
  @override
  Future<String?> getCurrentTheme() => _storage.get(_themeKey);

  ///
  /// Save theme
  ///
  @override
  Future<void> saveTheme(String value) => _storage.set(_themeKey, value);

  ///
  /// Clear preferences
  ///
  @override
  Future<void> clearPreferences() {
    return _storage.remove(_themeKey);
  }
}
