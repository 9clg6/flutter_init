import 'package:flutter/material.dart';

/// {@category Core}
/// {@subCategory Presentation}
///
/// Type of [TextVariant]
enum TextVariantType {
  /// Will use the [TextStyle] of displayLarge of the context TextTheme
  displayLarge,

  /// Will use the [TextStyle] of displayMedium of the context TextTheme
  displayMedium,

  /// Will use the [TextStyle] of displaySmall of the context TextTheme
  displaySmall,

  /// Will use the [TextStyle] of labelLarge of the context TextTheme
  labelLarge,

  /// Will use the [TextStyle] of labelMedium of the context TextTheme
  labelMedium,

  /// Will use the [TextStyle] of labelSmall of the context TextTheme
  labelSmall,

  /// Will use the [TextStyle] of titleLarge of the context TextTheme
  titleLarge,

  /// Will use the [TextStyle] of titleMedium of the context TextTheme
  titleMedium,

  /// Will use the [TextStyle] of titleSmall of the context TextTheme
  titleSmall,

  /// Will use the [TextStyle] of headlineLarge of the context TextTheme
  headlineLarge,

  /// Will use the [TextStyle] of headlineMedium of the context TextTheme
  headlineMedium,

  /// Will use the [TextStyle] of headlineSmall of the context TextTheme
  headlineSmall,

  /// Will use the [TextStyle] of bodyLarge of the context TextTheme
  bodyLarge,

  /// Will use the [TextStyle] of bodyMedium of the context TextTheme
  bodyMedium,

  /// Will use the [TextStyle] of bodySmall of the context TextTheme
  bodySmall,

  /// Will use the [TextStyle] of button of the context TextTheme
  button,

  /// Will use the [TextStyle] pass through `style` property
  custom,

  /// Will use the [TextStyle] of title of the AppBarTheme
  appBarTitle,
}

/// {@category Core}
/// {@subCategory Presentation}
///
/// A widget that will show a [Text] with the corrext style of its `type`.
class TextVariant extends StatelessWidget {
  /// constructor
  const TextVariant(
    this.data, {
    super.key,
    this.variantType = TextVariantType.bodyMedium,
    this.textKey,
    this.maxLines,
    this.overflow,
    this.softWrap,
    this.style,
    this.semanticsLabel,
    this.textAlign,
    this.textDirection,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.height,
  });

  /// text
  final String data;

  /// text
  final double? height;

  /// TextVariantType
  final TextVariantType variantType;

  /// text color
  final Color? color;

  /// font size
  final double? fontSize;

  /// font weight
  final FontWeight? fontWeight;

  ///inner text key
  final Key? textKey;

  /// max lines
  final int? maxLines;

  /// text overflow
  final TextOverflow? overflow;

  /// softwrap
  final bool? softWrap;

  /// style
  final TextStyle? style;

  /// semantics label for accessibility
  final String? semanticsLabel;

  /// text align
  final TextAlign? textAlign;

  /// text direction
  final TextDirection? textDirection;

  /// textWidthBasis
  final TextWidthBasis? textWidthBasis;

  /// textHeightBehavior
  final TextHeightBehavior? textHeightBehavior;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      key: textKey,
      maxLines: maxLines,
      overflow: overflow,
      softWrap: softWrap,
      style: style ?? _getTextStyle(context),
      semanticsLabel: semanticsLabel,
      textAlign: textAlign,
      textDirection: textDirection,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
    );
  }

  TextStyle _getTextStyle(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final AppBarTheme appBarTheme = Theme.of(context).appBarTheme;
    TextStyle textStyle = textTheme.bodyMedium!;
    switch (variantType) {
      case TextVariantType.displayLarge:
        textStyle = textTheme.displayLarge!;
      case TextVariantType.displayMedium:
        textStyle = textTheme.displayMedium!;
      case TextVariantType.displaySmall:
        textStyle = textTheme.displaySmall!;
      case TextVariantType.labelLarge:
        textStyle = textTheme.labelLarge!;
      case TextVariantType.labelMedium:
        textStyle = textTheme.labelMedium!;
      case TextVariantType.labelSmall:
        textStyle = textTheme.labelSmall!;
      case TextVariantType.titleLarge:
        textStyle = textTheme.titleLarge!;
      case TextVariantType.titleMedium:
        textStyle = textTheme.titleMedium!;
      case TextVariantType.titleSmall:
        textStyle = textTheme.titleSmall!;
      case TextVariantType.headlineLarge:
        textStyle = textTheme.headlineLarge!;
      case TextVariantType.headlineMedium:
        textStyle = textTheme.headlineMedium!;
      case TextVariantType.headlineSmall:
        textStyle = textTheme.headlineSmall!;
      case TextVariantType.bodyLarge:
        textStyle = textTheme.bodyLarge!;
      case TextVariantType.bodyMedium:
        textStyle = textTheme.bodyMedium!;
      case TextVariantType.bodySmall:
        textStyle = textTheme.bodySmall!;
      case TextVariantType.button:
        textStyle = textTheme.titleMedium!;
      case TextVariantType.appBarTitle:
        textStyle = appBarTheme.titleTextStyle ??
            appBarTheme.toolbarTextStyle ??
            textTheme.displaySmall!;
      case TextVariantType.custom:
        textStyle = style ?? textTheme.bodyMedium!;
    }

    if (color != null) {
      textStyle = textStyle.copyWith(color: color);
    }

    if (fontSize != null) {
      textStyle = textStyle.copyWith(fontSize: fontSize);
    }

    if (fontWeight != null) {
      textStyle = textStyle.copyWith(fontWeight: fontWeight);
    }

    if (height != null) {
      textStyle = textStyle.copyWith(height: height);
    }

    return textStyle;
  }
}
