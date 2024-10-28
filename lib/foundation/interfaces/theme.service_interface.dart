import 'package:flutter/material.dart';
import 'package:init/application/providers/initializer.dart';
import 'package:init/foundation/enums/theme_appareance.enum.dart';
import 'package:material_color_utilities/palettes/core_palette.dart';

///
/// Theme service interface
///
abstract class IThemeService {
  ///
  /// Factory constructor
  ///
  factory IThemeService() {
    return injector<IThemeService>();
  }

  ///
  /// Get dark theme
  ///
  ThemeData get darkTheme;

  ///
  /// Get light theme
  ///
  /// Can also be used to return a custom theme
  ///
  ThemeData get theme;

  ///
  /// Get current [ThemeAppearance]
  ///
  ThemeAppearance get themeAppearance;

  ///
  /// Get current [Brightness]
  ///
  Brightness get brightness;

  ///
  /// Get previous device [Brightness]
  ///
  Brightness get previousBrightness;

  ///
  /// Get current [ThemeMode]
  ///
  ThemeMode get themeMode;

  /// Get the current [ThemeData]
  ThemeData get currentTheme;

  /// Notifier for theme appearance changes
  ValueNotifier<ThemeAppearance> get notifier;

  ///
  bool get isDark;

  ///
  /// Update the theme appearance
  ///
  void updateThemeAppearance(ThemeAppearance themeAppearance);

  /// Initialize the theme data with the correct [brightness]
  ///
  /// It will apply the [corePalette] for colors
  void apply(
    Brightness brightness, {
    CorePalette? corePalette,
  });

  /// Save the previous brightness
  void savePreviousBrightness(Brightness platformBrightness);
}

/// Mixin to implement some getter
mixin IThemeServiceMixin implements IThemeService {
  ///
  /// Get current [ThemeMode]
  ///
  @override
  ThemeMode get themeMode => themeAppearance.matchingThemeMode;

  /// Get the current [ThemeData]
  @override
  ThemeData get currentTheme {
    final ThemeMode mode = themeMode;
    if (mode == ThemeMode.light) return theme;
    if (mode == ThemeMode.dark) return darkTheme;
    return brightness == Brightness.dark ? darkTheme : theme;
  }
}

///
/// Get current [ColorScheme]
///
ColorScheme appColorScheme() {
  return IThemeService().currentTheme.colorScheme;
}
