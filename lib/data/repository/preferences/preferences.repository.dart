import 'package:init/foundation/enums/theme_appareance.enum.dart';

///
/// [PreferencesRepository]
///
abstract class PreferencesRepository {
  ///
  /// Set new app theme
  ///
  Future<void> changeTheme(ThemeAppearance newThemeAppearance);

  ///
  /// Get current theme of the app
  /// 
  Future<ThemeAppearance> getCurrentTheme();

  ///
  /// Clear preferences
  ///
  Future<void> clearPreferences();
}
