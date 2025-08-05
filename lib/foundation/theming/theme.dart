import 'package:flutter/material.dart';

/// Material theme
class MaterialTheme {
  /// Constructor
  ///
  const MaterialTheme();

  /// Default font family
  static const String defaultFontFamily = 'Poppins';

  /// Light scheme
  /// @return [ColorScheme] light scheme
  ///
  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF0055FF),
      onPrimary: Color(0xFFFFFFFF),
      secondary: Color(0xFF65558F),
      onSecondary: Color(0xFFFFFFFF),
      tertiary: Color(0xFF8B4A61),
      onTertiary: Color(0xFFFFFFFF),
      error: Color(0xFF904A43),
      onError: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFF202A42),
      onPrimaryContainer: Color(0xFFD4DEF6),
      secondaryContainer: Color(0xFFE9DDFF),
      onSecondaryContainer: Color(0xFF210F47),
      tertiaryContainer: Color(0xFFFFD9E3),
      onTertiaryContainer: Color(0xFF3A071E),
      errorContainer: Color(0xFFFFDAD6),
      onErrorContainer: Color(0xFF3B0907),
      surfaceDim: Color(0xFFDED8E0),
      surface: Color(0xFF0C0D16),
      surfaceBright: Color(0xFFFDF7FF),
      inverseSurface: Color(0xFF322F35),
      onInverseSurface: Color(0xFFF5EFF7),
      inversePrimary: Color(0xFFCFBDFE),
      surfaceContainerLowest: Color(0xFFFFFFFF),
      surfaceContainerLow: Color(0xFFF8F2FA),
      surfaceContainer: Color(0xFF1F2130),
      surfaceContainerHigh: Color(0xFF2E303F),
      surfaceContainerHighest: Color(0xFFE6E0E9),
      onSurface: Color(0xFFFDF7FF),
      onSurfaceVariant: Color(0xFF85858B),
      outline: Color(0xFFC7C8CF),
      outlineVariant: Color(0xFF363F55),
      scrim: Color(0xFF000000),
      shadow: Color(0xFF000000),
    );
  }

  TextTheme _createMaterial3TextTheme(
    TextTheme textTheme,
    ColorScheme colorScheme,
  ) {
    return textTheme.copyWith(
      labelMedium: textTheme.labelMedium!.copyWith(
        color: colorScheme.onSurface,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: defaultFontFamily,
      ),
      labelLarge: textTheme.labelLarge!.copyWith(
        color: colorScheme.onSurface,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        fontFamily: defaultFontFamily,
      ),
      headlineSmall: textTheme.headlineSmall!.copyWith(
        color: colorScheme.onSurface,
        fontWeight: FontWeight.w300,
        fontFamily: defaultFontFamily,
        fontSize: 20,
        letterSpacing: 0,
      ),
      bodyLarge: textTheme.bodyLarge!.copyWith(
        color: colorScheme.onSurface,
        fontSize: 16,
        fontFamily: defaultFontFamily,
        fontWeight: FontWeight.w300,
        letterSpacing: 0,
      ),
      labelSmall: textTheme.labelSmall!.copyWith(
        color: colorScheme.onSurface,
        fontSize: 12,
        fontFamily: defaultFontFamily,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
      ),
      displayMedium: textTheme.displayMedium!.copyWith(
        color: colorScheme.onSurface,
        fontWeight: FontWeight.w400,
        fontFamily: defaultFontFamily,
        fontSize: 40,
        letterSpacing: -1,
      ),
      bodyMedium: textTheme.bodyMedium!.copyWith(
        color: colorScheme.onSurface,
        fontSize: 14,
        fontFamily: defaultFontFamily,
        fontWeight: FontWeight.w300,

        letterSpacing: 0,
      ),
      headlineMedium: textTheme.headlineMedium!.copyWith(
        color: colorScheme.onSurface,
        fontWeight: FontWeight.w600,
        fontSize: 24,
        letterSpacing: 0,
      ),
      displayLarge: textTheme.displayLarge!.copyWith(
        color: colorScheme.onSurface,
        fontSize: 48,
        fontWeight: FontWeight.bold,
        fontFamily: defaultFontFamily,
      ),
      displaySmall: textTheme.displaySmall!.copyWith(
        color: colorScheme.onSurface,
        height: 1.2,
        fontSize: 48,
        letterSpacing: -1,
        fontWeight: FontWeight.bold,
      ),
      headlineLarge: textTheme.headlineLarge!.copyWith(
        color: colorScheme.onSurface,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: textTheme.titleMedium!.copyWith(
        color: colorScheme.onSurface,
        fontWeight: FontWeight.w500,
        fontSize: 16,
        fontFamily: defaultFontFamily,
      ),
      titleLarge: textTheme.titleLarge!.copyWith(
        color: colorScheme.onSurface,
        fontWeight: FontWeight.bold,
        fontSize: 16,
        fontFamily: defaultFontFamily,
      ),
      bodySmall: textTheme.bodySmall!.copyWith(
        color: colorScheme.onSurface,
        fontSize: 12,
        fontFamily: defaultFontFamily,
      ),
    );
  }

  /// Light theme
  /// @return [ThemeData] light theme
  ///
  ThemeData light() {
    final ColorScheme colorScheme = lightScheme();
    final TextTheme textTheme = _createMaterial3TextTheme(
      ThemeData.light().textTheme,
      colorScheme,
    );

    return theme(colorScheme).copyWith(textTheme: textTheme);
  }

  // /// Light medium contrast scheme
  // /// @return [ColorScheme] light medium contrast scheme
  // ///
  // static ColorScheme lightMediumContrastScheme() {
  //   return const ColorScheme(
  //     brightness: Brightness.light,
  //     primary: Color(0xff003d3d),
  //     surfaceTint: Color(0xff016a6a),
  //     onPrimary: Color(0xffCD3702),
  //     primaryContainer: Color(0xff0d6e6e),
  //     onPrimaryContainer: Color(0xffffffff),
  //     secondary: Color(0xff003d3d),
  //     onSecondary: Color(0xffffffff),
  //     secondaryContainer: Color(0xff1d7978),
  //     onSecondaryContainer: Color(0xffffffff),
  //     tertiary: Color(0xff003d3e),
  //     onTertiary: Color(0xffffffff),
  //     tertiaryContainer: Color(0xff217979),
  //     onTertiaryContainer: Color(0xffffffff),
  //     error: Color(0xff73000a),
  //     onError: Color(0xffffffff),
  //     errorContainer: Color(0xffd61b25),
  //     onErrorContainer: Color(0xffffffff),
  //     surface: Color(0xfffbf9fa),
  //     onSurface: Color(0xff101112),
  //     onSurfaceVariant: Color(0xff33363b),
  //     outline: Color(0xff4f5358),
  //     outlineVariant: Color(0xff6a6d72),
  //     shadow: Color(0xff000000),
  //     scrim: Color(0xff000000),
  //     inverseSurface: Color(0xff303031),
  //     inversePrimary: Color(0xff84d4d3),
  //     primaryFixed: Color(0xff217979),
  //     onPrimaryFixed: Color(0xffffffff),
  //     primaryFixedDim: Color(0xff005f5f),
  //     onPrimaryFixedVariant: Color(0xffffffff),
  //     secondaryFixed: Color(0xff1d7978),
  //     onSecondaryFixed: Color(0xffffffff),
  //     secondaryFixedDim: Color(0xff005f5e),
  //     onSecondaryFixedVariant: Color(0xffffffff),
  //     tertiaryFixed: Color(0xff217979),
  //     onTertiaryFixed: Color(0xffffffff),
  //     tertiaryFixedDim: Color(0xff005f60),
  //     onTertiaryFixedVariant: Color(0xffffffff),
  //     surfaceDim: Color(0xffc7c6c7),
  //     surfaceBright: Color(0xfffbf9fa),
  //     surfaceContainerLowest: Color(0xffffffff),
  //     surfaceContainerLow: Color(0xfff5f3f4),
  //     surfaceContainer: Color(0xffe9e8e9),
  //     surfaceContainerHigh: Color(0xffdedcdd),
  //     surfaceContainerHighest: Color(0xffd3d1d2),
  //   );
  // }

  // /// Light medium contrast theme
  // /// @return [ThemeData] light medium contrast theme
  // ///
  // ThemeData lightMediumContrast() {
  //   return theme(lightMediumContrastScheme());
  // }

  // /// Light high contrast scheme
  // /// @return [ColorScheme] light high contrast scheme
  // ///
  // static ColorScheme lightHighContrastScheme() {
  //   return const ColorScheme(
  //     brightness: Brightness.light,
  //     primary: Color(0xff003232),
  //     surfaceTint: Color(0xff016a6a),
  //     onPrimary: Color(0xffffffff),
  //     primaryContainer: Color(0xff005252),
  //     onPrimaryContainer: Color(0xffffffff),
  //     secondary: Color(0xff003232),
  //     onSecondary: Color(0xffffffff),
  //     secondaryContainer: Color(0xff005252),
  //     onSecondaryContainer: Color(0xffffffff),
  //     tertiary: Color(0xff003232),
  //     onTertiary: Color(0xffffffff),
  //     tertiaryContainer: Color(0xff005253),
  //     onTertiaryContainer: Color(0xffffffff),
  //     error: Color(0xff600007),
  //     onError: Color(0xffffffff),
  //     errorContainer: Color(0xff980011),
  //     onErrorContainer: Color(0xffffffff),
  //     surface: Color(0xfffbf9fa),
  //     onSurface: Color(0xff000000),
  //     onSurfaceVariant: Color(0xff000000),
  //     outline: Color(0xff292c31),
  //     outlineVariant: Color(0xff46494e),
  //     shadow: Color(0xff000000),
  //     scrim: Color(0xff000000),
  //     inverseSurface: Color(0xff303031),
  //     inversePrimary: Color(0xff84d4d3),
  //     primaryFixed: Color(0xff005252),
  //     onPrimaryFixed: Color(0xffffffff),
  //     primaryFixedDim: Color(0xff003939),
  //     onPrimaryFixedVariant: Color(0xffffffff),
  //     secondaryFixed: Color(0xff005252),
  //     onSecondaryFixed: Color(0xffffffff),
  //     secondaryFixedDim: Color(0xff003939),
  //     onSecondaryFixedVariant: Color(0xffffffff),
  //     tertiaryFixed: Color(0xff005253),
  //     onTertiaryFixed: Color(0xffffffff),
  //     tertiaryFixedDim: Color(0xff00393a),
  //     onTertiaryFixedVariant: Color(0xffffffff),
  //     surfaceDim: Color(0xffbab8b9),
  //     surfaceBright: Color(0xfffbf9fa),
  //     surfaceContainerLowest: Color(0xffffffff),
  //     surfaceContainerLow: Color(0xfff2f0f1),
  //     surfaceContainer: Color(0xffe4e2e3),
  //     surfaceContainerHigh: Color(0xffd5d4d5),
  //     surfaceContainerHighest: Color(0xffc7c6c7),
  //   );
  // }

  // /// Light high contrast theme
  // /// @return [ThemeData] light high contrast theme
  // ///
  // ThemeData lightHighContrast() {
  //   return theme(lightHighContrastScheme());
  // }

  // /// Dark scheme
  // /// @return [ColorScheme] dark scheme
  // ///
  // static ColorScheme darkScheme() {
  //   return const ColorScheme(
  //     brightness: Brightness.dark,
  //     primary: Color(0xFFFF6600), // --primary-100
  //     surfaceTint: Color(0xFFFF6600), // --primary-100
  //     onPrimary: Color(0xFFFFFFFF), // --text-100
  //     primaryContainer: Color(0xFFff983f), // --primary-200
  //     onPrimaryContainer: Color(0xFFffffa1), // --primary-300
  //     secondary: Color(0xFFff983f), // --primary-200
  //     onSecondary: Color(0xFFFFFFFF), // --text-100
  //     secondaryContainer: Color(0xFF444648), // --bg-300
  //     onSecondaryContainer: Color(0xFFe0e0e0), // --text-200
  //     tertiary: Color(0xFFF5F5F5), // --accent-100
  //     onTertiary: Color(0xFF1D1F21), // --bg-100
  //     tertiaryContainer: Color(0xFF929292), // --accent-200
  //     onTertiaryContainer: Color(0xFFFFFFFF), // --text-100
  //     error: Color(0xffffb3ac), // Gardé la même
  //     onError: Color(0xff680008), // Gardé la même
  //     errorContainer: Color(0xffff544e), // Gardé la même
  //     onErrorContainer: Color(0xff4d0004), // Gardé la même
  //     surface: Color(0xFF2c2e30), // --bg-100
  //     onSurface: Color(0xFFFFFFFF), // --text-100
  //     onSurfaceVariant: Color(0xFFe0e0e0), // --text-200
  //     outline: Color(0xFF929292), // --accent-200
  //     outlineVariant: Color(0xFF444648), // --bg-300
  //     shadow: Color(0xff000000), // Gardé la même
  //     scrim: Color(0xff000000), // Gardé la même
  //     inverseSurface: Color(0xFFFFFFFF), // --text-100
  //     inversePrimary: Color(0xFFFF6600), // --primary-100
  //     surfaceDim: Color(0xFF1D1F21), // --bg-100
  //     surfaceBright: Color(0xFF444648), // --bg-300
  //     surfaceContainerLowest: Color(0xFF1D1F21), // --bg-100
  //     surfaceContainerLow: Color(0xFF2c2e30), // --bg-200
  //     surfaceContainer: Color(0xFF2c2e30), // --bg-200
  //     surfaceContainerHigh: Color(0xFF444648), // --bg-300
  //     surfaceContainerHighest: Color(0xFF444648), // --bg-300
  //   );
  // }

  // /// Dark theme
  // /// @return [ThemeData] dark theme
  // ///
  // ThemeData dark() {
  //   return theme(darkScheme());
  // }

  // /// Dark medium contrast scheme
  // /// @return [ColorScheme] dark medium contrast scheme
  // ///
  // static ColorScheme darkMediumContrastScheme() {
  //   return const ColorScheme(
  //     brightness: Brightness.dark,
  //     primary: Color(0xff9aeae9),
  //     surfaceTint: Color(0xff84d4d3),
  //     onPrimary: Color(0xff002b2b),
  //     primaryContainer: Color(0xff4c9d9d),
  //     onPrimaryContainer: Color(0xff000000),
  //     secondary: Color(0xff99eae9),
  //     onSecondary: Color(0xff002b2b),
  //     secondaryContainer: Color(0xff4a9d9c),
  //     onSecondaryContainer: Color(0xff000000),
  //     tertiary: Color(0xffffffff),
  //     onTertiary: Color(0xff003737),
  //     tertiaryContainer: Color(0xffa1f0f0),
  //     onTertiaryContainer: Color(0xff005151),
  //     error: Color(0xffffd2cd),
  //     onError: Color(0xff540005),
  //     errorContainer: Color(0xffff544e),
  //     onErrorContainer: Color(0xff000000),
  //     surface: Color(0xff131314),
  //     onSurface: Color(0xffffffff),
  //     onSurfaceVariant: Color(0xffdadce2),
  //     outline: Color(0xffafb2b7),
  //     outlineVariant: Color(0xff8d9096),
  //     shadow: Color(0xff000000),
  //     scrim: Color(0xff000000),
  //     inverseSurface: Color(0xffe4e2e3),
  //     inversePrimary: Color(0xff005151),
  //     primaryFixed: Color(0xffa0f0f0),
  //     onPrimaryFixed: Color(0xff001414),
  //     primaryFixedDim: Color(0xff84d4d3),
  //     onPrimaryFixedVariant: Color(0xff003d3d),
  //     secondaryFixed: Color(0xff9ff1ef),
  //     onSecondaryFixed: Color(0xff001414),
  //     secondaryFixedDim: Color(0xff83d4d3),
  //     onSecondaryFixedVariant: Color(0xff003d3d),
  //     tertiaryFixed: Color(0xffa1f0f0),
  //     onTertiaryFixed: Color(0xff001415),
  //     tertiaryFixedDim: Color(0xff85d4d4),
  //     onTertiaryFixedVariant: Color(0xff003d3e),
  //     surfaceDim: Color(0xff131314),
  //     surfaceBright: Color(0xff444446),
  //     surfaceContainerLowest: Color(0xff070708),
  //     surfaceContainerLow: Color(0xff1d1e1f),
  //     surfaceContainer: Color(0xff272829),
  //     surfaceContainerHigh: Color(0xff323234),
  //     surfaceContainerHighest: Color(0xff3d3e3f),
  //   );
  // }

  // /// Dark medium contrast theme
  // /// @return [ThemeData] dark medium contrast theme
  // ///
  // ThemeData darkMediumContrast() {
  //   return theme(darkMediumContrastScheme());
  // }

  // /// Dark high contrast scheme
  // /// @return [ColorScheme] dark high contrast scheme
  // ///
  // static ColorScheme darkHighContrastScheme() {
  //   return const ColorScheme(
  //     brightness: Brightness.dark,
  //     primary: Color(0xffaefefd),
  //     surfaceTint: Color(0xff84d4d3),
  //     onPrimary: Color(0xff000000),
  //     primaryContainer: Color(0xff80d0cf),
  //     onPrimaryContainer: Color(0xff000e0e),
  //     secondary: Color(0xffacfefd),
  //     onSecondary: Color(0xff000000),
  //     secondaryContainer: Color(0xff7fd0cf),
  //     onSecondaryContainer: Color(0xff000e0e),
  //     tertiary: Color(0xffffffff),
  //     onTertiary: Color(0xff000000),
  //     tertiaryContainer: Color(0xffa1f0f0),
  //     onTertiaryContainer: Color(0xff003030),
  //     error: Color(0xffffecea),
  //     onError: Color(0xff000000),
  //     errorContainer: Color(0xffffaea6),
  //     onErrorContainer: Color(0xff220001),
  //     surface: Color(0xff131314),
  //     onSurface: Color(0xffffffff),
  //     onSurfaceVariant: Color(0xffffffff),
  //     outline: Color(0xffedf0f6),
  //     outlineVariant: Color(0xffc0c3c8),
  //     shadow: Color(0xff000000),
  //     scrim: Color(0xff000000),
  //     inverseSurface: Color(0xffe4e2e3),
  //     inversePrimary: Color(0xff005151),
  //     primaryFixed: Color(0xffa0f0f0),
  //     onPrimaryFixed: Color(0xff000000),
  //     primaryFixedDim: Color(0xff84d4d3),
  //     onPrimaryFixedVariant: Color(0xff001414),
  //     secondaryFixed: Color(0xff9ff1ef),
  //     onSecondaryFixed: Color(0xff000000),
  //     secondaryFixedDim: Color(0xff83d4d3),
  //     onSecondaryFixedVariant: Color(0xff001414),
  //     tertiaryFixed: Color(0xffa1f0f0),
  //     onTertiaryFixed: Color(0xff000000),
  //     tertiaryFixedDim: Color(0xff85d4d4),
  //     onTertiaryFixedVariant: Color(0xff001415),
  //     surfaceDim: Color(0xff131314),
  //     surfaceBright: Color(0xff505051),
  //     surfaceContainerLowest: Color(0xff000000),
  //     surfaceContainerLow: Color(0xff1f2021),
  //     surfaceContainer: Color(0xff303031),
  //     surfaceContainerHigh: Color(0xff3b3b3c),
  //     surfaceContainerHighest: Color(0xff464748),
  //   );
  // }

  // /// Dark high contrast theme
  // /// @return [ThemeData] dark high contrast theme
  // ///
  // ThemeData darkHighContrast() {
  //   return theme(darkHighContrastScheme());
  // }

  /// Theme
  /// @param [colorScheme] color scheme
  /// @return [ThemeData] theme
  ///
  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
    appBarTheme: AppBarTheme(
      backgroundColor: colorScheme.surface,
      elevation: 0,
      iconTheme: IconThemeData(color: colorScheme.onSurface),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: colorScheme.primary,
      foregroundColor: colorScheme.onPrimary,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: colorScheme.surface,
      selectedItemColor: colorScheme.primary,
      unselectedItemColor: colorScheme.onSurfaceVariant,
    ),
    cardTheme: CardThemeData(
      color: colorScheme.surfaceContainer,
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: colorScheme.outline),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: colorScheme.surfaceContainerLow,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: colorScheme.outline),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: colorScheme.outline),
      ),
    ),
  );

  /// Extended colors
  /// @return [List<ExtendedColor>] extended colors
  ///
  List<ExtendedColor> get extendedColors => <ExtendedColor>[];
}

/// Extended color
class ExtendedColor {
  /// Constructor
  /// @param [seed] seed
  /// @param [value] value
  /// @param [light] light
  /// @param [lightHighContrast] light high contrast
  /// @param [lightMediumContrast] light medium contrast
  /// @param [dark] dark
  /// @param [darkHighContrast] dark high contrast
  /// @param [darkMediumContrast] dark medium contrast
  ///
  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });

  /// Seed
  final Color seed;

  /// Value
  final Color value;

  /// Light
  final ColorFamily light;

  /// Light high contrast
  final ColorFamily lightHighContrast;

  /// Light medium contrast
  final ColorFamily lightMediumContrast;

  /// Dark
  final ColorFamily dark;

  /// Dark high contrast
  final ColorFamily darkHighContrast;

  /// Dark medium contrast
  final ColorFamily darkMediumContrast;
}

/// Color family
class ColorFamily {
  /// Constructor
  /// @param [color] color
  /// @param [onColor] on color
  /// @param [colorContainer] color container
  /// @param [onColorContainer] on color container
  ///
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  /// Color
  final Color color;

  /// On color
  final Color onColor;

  /// Color container
  final Color colorContainer;

  /// On color container
  final Color onColorContainer;
}
