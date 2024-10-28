import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:init/domain/use_case/get_theme.use_case.dart';
import 'package:init/foundation/enums/theme_appareance.enum.dart';
import 'package:init/foundation/interfaces/theme.service_interface.dart';
import 'package:init/foundation/theming/theme.dart' as themes;
import 'package:material_color_utilities/palettes/core_palette.dart';

///
/// [ThemeService]
///
class ThemeService with IThemeServiceMixin implements IThemeService {
  /// Current brightness
  Brightness _currentBrightness;

  /// Previous brightness
  Brightness _previousBrightness;

  /// ValueNotifier for ThemeAppareance
  final ValueNotifier<ThemeAppearance> themeAppearanceNotifier;

  ///
  /// Constructor
  ///
  ThemeService._(
    Brightness initialBrightness,
    ThemeAppearance initialThemeAppearance,
  )   : _currentBrightness = initialBrightness,
        _previousBrightness = initialBrightness,
        themeAppearanceNotifier =
            ValueNotifier<ThemeAppearance>(initialThemeAppearance);

  /// Current brightness
  @override
  Brightness get brightness => _currentBrightness;

  /// Previous brightness
  @override
  Brightness get previousBrightness => _previousBrightness;

  /// Dark theme
  @override
  ThemeData get darkTheme => themes.darkTheme;

  /// Light theme
  @override
  ThemeData get theme => themes.lightTheme;

  /// Theme appearance notifier
  @override
  ValueNotifier<ThemeAppearance> get notifier => themeAppearanceNotifier;

  /// Theme appearance
  @override
  ThemeAppearance get themeAppearance => themeAppearanceNotifier.value;

  /// Check if the current theme is dark
  @override
  bool get isDark =>
      themeAppearance == ThemeAppearance.dark ||
      (themeAppearance == ThemeAppearance.system &&
          WidgetsBinding.instance.platformDispatcher.platformBrightness ==
              Brightness.dark);

  ///
  /// Apply theme
  ///
  @override
  void apply(Brightness brightness, {CorePalette? corePalette}) {
    _currentBrightness = brightness;
  }

  ///
  /// Update theme appearance
  ///
  @override
  void updateThemeAppearance(
    ThemeAppearance themeAppearance,
  ) {
    themeAppearanceNotifier.value = themeAppearance;
  }

  ///
  /// Inject this service
  ///
  static Future<ThemeService> inject(
    GetThemeUseCase getThemeUseCase,
  ) async {
    final ThemeAppearance currentTheme = await getThemeUseCase.execute();
    return ThemeService._(
      PlatformDispatcher.instance.platformBrightness,
      currentTheme,
    );
  }

  ///
  /// Save previous brightness
  ///
  @override
  void savePreviousBrightness(Brightness platformBrightness) {
    _previousBrightness = platformBrightness;
  }
}
