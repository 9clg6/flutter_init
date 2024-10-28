import 'package:init/data/local_data_source/preferences/preferences_local.data_source.dart';
import 'package:init/data/repository/preferences/preferences.repository.dart';
import 'package:init/foundation/enums/theme_appareance.enum.dart';

///
/// [PreferencesRepositoryImpl]
///
class PreferencesRepositoryImpl implements PreferencesRepository {
  /// Preferences local data source
  final PreferencesLocalDataSource _localDataSource;

  ///
  /// Constructor
  ///
  PreferencesRepositoryImpl(this._localDataSource);

  ///
  /// Change theme
  ///
  @override
  Future<void> changeTheme(ThemeAppearance newThemeAppearance) async {
    await _localDataSource.saveTheme(newThemeAppearance.name);
  }

  ///
  /// Get current theme
  ///
  @override
  Future<ThemeAppearance> getCurrentTheme() async {
    final String? result = await _localDataSource.getCurrentTheme();
    switch (result) {
      case 'light':
        return ThemeAppearance.light;
      case 'dark':
        return ThemeAppearance.dark;
      case 'system':
        return ThemeAppearance.system;
      default:
        return ThemeAppearance.system;
    }
  }
  
  ///
  /// Clear preferences
  ///
  @override
  Future<void> clearPreferences() {
    return _localDataSource.clearPreferences();
  }
}
