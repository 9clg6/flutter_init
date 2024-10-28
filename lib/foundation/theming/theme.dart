import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:init/gen/fonts.gen.dart';

///
/// Default font family
///
const String defaultFontFamily = FontFamily.poppins;

///
/// Light color scheme
///
const ColorScheme lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  // Background
  surfaceDim: Color(0xFFFFFFFF),
  primary: Color(0xff2251d7),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xffbccfff),
  onPrimaryContainer: Color(0xff302c4d),
  secondary: Color(0xff27726e),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xffd9f2f0),
  onSecondaryContainer: Color(0xff0d2624),
  tertiary: Color(0xfff81554),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xfffddce5),
  onTertiaryContainer: Color(0xffa30430),
  error: Color(0xffc70a3f),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xffffe4e4),
  onErrorContainer: Color(0xff660520),
  surface: Color(0xffeef2fe),
  onSurface: Color(0xff302c4d),
  onSurfaceVariant: Color(0xff6d71a0),
  outline: Color(0xffeef2fe),
  outlineVariant: Color(0xffbfc5e1),
);

///
/// Dark color scheme
///
const ColorScheme darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  // Background
  surfaceDim: Color(0xff18181B),
  primary: Color(0xff96B2F8),
  onPrimary: Color(0xff282541),
  primaryContainer: Color(0xffBDD0FF),
  onPrimaryContainer: Color(0xFF302C4D),
  secondary: Color(0xff0DB59C),
  onSecondary: Color(0xff081716),
  secondaryContainer: Color(0xffD9F2F1),
  onSecondaryContainer: Color(0xff0D2625),
  tertiary: Color(0xffFF99A5),
  onTertiary: Color(0xFF63031E),
  tertiaryContainer: Color(0xffA30531),
  onTertiaryContainer: Color(0xffFEDCE6),
  error: Color(0xffFBACBF),
  onError: Color(0xff660520),
  errorContainer: Color(0xff3F2B3F),
  onErrorContainer: Color(0xffFDD8E1),
  surface: Color(0xff2B2B31),
  onSurface: Color(0xFFFFFFFF),
  onSurfaceVariant: Color(0xffBCBCC9),
  outline: Color(0xff838391),
  outlineVariant: Color(0xff6E6E7C),
);

///
/// Page transitions theme
///
const PageTransitionsTheme pageTransitionsTheme = PageTransitionsTheme(
  builders: <TargetPlatform, PageTransitionsBuilder>{
    TargetPlatform.android: ZoomPageTransitionsBuilder(),
    TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
    TargetPlatform.windows: ZoomPageTransitionsBuilder(),
    TargetPlatform.linux: ZoomPageTransitionsBuilder(),
    TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
  },
);

///
/// Common flex theme data
/// 
FlexColorScheme commonFlexThemeData(ColorScheme colorScheme) => FlexColorScheme(
      scaffoldBackground: colorScheme.surfaceDim,
      background: colorScheme.surfaceDim,
      surface: colorScheme.surface,
      colorScheme: colorScheme,
      tabBarStyle: FlexTabBarStyle.forBackground,
      pageTransitionsTheme: pageTransitionsTheme,
      useMaterial3: true,
      subThemesData: const FlexSubThemesData(
        navigationBarHeight: 80,
        textButtonRadius: 0.0,
        elevatedButtonRadius: 0.0,
        outlinedButtonRadius: 0.0,
        outlinedButtonBorderWidth: 1.0,
        outlinedButtonPressedBorderWidth: 2.0,
        buttonMinSize: Size(80, 48),
        toggleButtonsRadius: 6.0,
        inputDecoratorRadius: 6.0,
        inputDecoratorBorderType: FlexInputBorderType.outline,
        inputDecoratorBorderWidth: 1,
        inputDecoratorSchemeColor: SchemeColor.outline,
        inputDecoratorFocusedBorderWidth: 1,
        inputDecoratorIsFilled: false,
        fabUseShape: true,
        fabRadius: 16.0,
        chipRadius: 16.0,
        dialogRadius: 24.0,
        timePickerDialogRadius: 24.0,
        dialogElevation: 12.0,
        bottomSheetElevation: 12,
        bottomNavigationBarShowUnselectedLabels: false,
        dialogBackgroundSchemeColor: SchemeColor.surface,
        bottomSheetModalBackgroundColor: SchemeColor.surface,
        bottomSheetBackgroundColor: SchemeColor.surface,
        navigationRailBackgroundSchemeColor: SchemeColor.surface,
        navigationBarBackgroundSchemeColor: SchemeColor.surface,
        bottomNavigationBarBackgroundSchemeColor: SchemeColor.surface,
        appBarBackgroundSchemeColor: SchemeColor.background,
        blendOnColors: false,
      ),
    );

///
/// Create material 3 text theme
///
TextTheme _createMaterial3TextTheme(
  TextTheme textTheme,
  ColorScheme colorScheme,
) {
  return textTheme.copyWith(
    displayLarge: textTheme.displayLarge!.copyWith(
      color: colorScheme.onSurface,
    ),
    displayMedium: textTheme.displayMedium!.copyWith(
      color: colorScheme.onSurface,
    ),
    displaySmall: textTheme.displaySmall!.copyWith(
      color: colorScheme.onSurface,
    ),
    headlineLarge: textTheme.headlineLarge!.copyWith(
      color: colorScheme.onSurface,
      fontWeight: FontWeight.bold,
      fontSize: 30,
      letterSpacing: 0.25,
      fontFamily: defaultFontFamily,
      height: 44 / 30,
    ),
    headlineMedium: textTheme.headlineMedium!.copyWith(
      color: colorScheme.onSurface,
      fontWeight: FontWeight.bold,
      fontSize: 24,
      letterSpacing: 0.25,
      height: 34 / 24,
      fontFamily: defaultFontFamily,
    ),
    headlineSmall: textTheme.headlineSmall!.copyWith(
      color: colorScheme.onSurface,
      fontWeight: FontWeight.w600,
      fontSize: 18,
      height: 28 / 18,
      letterSpacing: 0.25,
      fontFamily: defaultFontFamily,
    ),
    titleLarge: textTheme.titleLarge!.copyWith(
      color: colorScheme.onSurface,
      fontWeight: FontWeight.w600,
      fontSize: 16,
      height: 24 / 16,
      letterSpacing: 0.25,
      fontFamily: defaultFontFamily,
    ),
    titleMedium: textTheme.titleMedium!.copyWith(
      color: colorScheme.onSurface,
      fontWeight: FontWeight.w600,
      fontSize: 14,
      letterSpacing: 0.25,
      height: 20 / 14,
      fontFamily: defaultFontFamily,
    ),
    titleSmall: textTheme.titleSmall!.copyWith(
      color: colorScheme.onSurface,
      fontWeight: FontWeight.w600,
      fontSize: 14,
      letterSpacing: 0.25,
      height: 24 / 16,
      fontFamily: defaultFontFamily,
    ),
    labelLarge: textTheme.labelLarge!.copyWith(
      color: colorScheme.onSurface,
      fontWeight: FontWeight.w600,
      fontSize: 16,
      letterSpacing: 0.25,
      height: 24 / 16,
      fontFamily: defaultFontFamily,
    ),
    labelMedium: textTheme.labelMedium!.copyWith(
      color: colorScheme.onSurface,
      fontWeight: FontWeight.w600,
      fontSize: 14,
      letterSpacing: 0.25,
      fontFamily: defaultFontFamily,
    ),
    labelSmall: textTheme.labelSmall!.copyWith(
      color: colorScheme.onSurface,
      fontWeight: FontWeight.w600,
      fontSize: 13,
      letterSpacing: 0.25,
      height: 20 / 16,
      fontFamily: defaultFontFamily,
    ),
    bodyLarge: textTheme.bodyLarge!.copyWith(
      color: colorScheme.onSurface,
      fontSize: 16,
      fontFamily: defaultFontFamily,
      height: 24 / 16,
      letterSpacing: 0.3,
    ),
    bodyMedium: textTheme.bodyMedium!.copyWith(
      color: colorScheme.onSurface,
      fontSize: 14,
      letterSpacing: 0.2,
      height: 20 / 14,
      fontFamily: defaultFontFamily,
    ),
    bodySmall: textTheme.bodySmall!.copyWith(
      color: colorScheme.onSurface,
      fontSize: 12,
      letterSpacing: 0.25,
      height: 16 / 12,
      fontFamily: defaultFontFamily,
    ),
  );
}

///
/// Light theme
///
final ThemeData lightTheme = commonFlexThemeData(lightColorScheme)
    .copyWith(
      brightness: Brightness.light,
      textTheme: _createMaterial3TextTheme(
        Typography.blackMountainView,
        lightColorScheme,
      ),
    )
    .toTheme
    .copyWith(
      textSelectionTheme: const TextSelectionThemeData(),
    ); // need to make text selection visible on android

///
final ThemeData darkTheme = commonFlexThemeData(darkColorScheme)
    .copyWith(
      brightness: Brightness.dark,
      textTheme: _createMaterial3TextTheme(
        Typography.blackMountainView,
        darkColorScheme,
      ),
    )
    .toTheme;
