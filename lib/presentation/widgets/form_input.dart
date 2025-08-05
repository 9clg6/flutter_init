// ignore_for_file: public_member_api_docs trop de champs

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Border type of [FormInput]
enum FormInputBorderType {
  /// line on all borders
  outline,

  /// line on bottom border
  underline,
}

///
/// [FormInput]
///
class FormInput extends StatelessWidget {
  ///
  /// Constructor
  ///
  const FormInput({
    super.key,
    this.initialValue,
    this.hintText,
    this.labelText,
    this.borderType = FormInputBorderType.outline,
    this.validator,
    this.controller,
    this.onChanged,
    this.keyboardType,
    this.obscureText = false,
    this.onSaved,
    this.onFieldSubmitted,
    this.textAlign = TextAlign.start,
    this.textInputAction,
    this.enabled = true,
    this.maxLines,
    this.minLines = 1,
    this.maxLength,
    this.readOnly = false,
    this.autoCorrect = true,
    this.helperText,
    this.prefixIcon,
    this.prefixText,
    this.suffixIcon,
    this.suffixText,
    this.prefixStyle,
    this.suffixStyle,
    this.onTap,
    this.focusNode,
    this.isDense = true,
    this.autofillHints,
    this.fillColor,
    this.inputFormatters,
    this.hintStyle,
    this.labelStyle,
    this.autofocus = false,
    this.style,
    this.textCapitalization = TextCapitalization.sentences,
    this.opacity,
    this.enabledBorderColor,
    this.errorText,
    this.errorBuilder,
    this.contentPadding = const EdgeInsets.only(bottom: 14, top: 14, right: 16),
    this.borderColor,
    this.hintMaxLines = 1,
    this.expands = false,
    this.borderWidth = 1,
    this.borderRadius = 16,
    this.autoValidate = true,
    this.hintColor,
    this.unfocusOnTapOutside = true,
    this.focusBorderColor,
  });

  /// expands
  final bool expands;

  /// borderColor
  final Color? borderColor;

  /// focusBorderColor
  final Color? focusBorderColor;

  /// contentPadding
  final EdgeInsets contentPadding;

  /// initialValue
  final String? initialValue;

  /// hintText
  final String? hintText;

  /// labelText
  final String? labelText;

  /// borderType
  final FormInputBorderType borderType;

  /// validator
  final String? Function(String?)? validator;

  /// controller
  final TextEditingController? controller;

  /// onChanged
  final ValueChanged<String>? onChanged;

  /// keyboardType
  final TextInputType? keyboardType;

  /// opacity
  final double? opacity;

  final String? errorText;

  final double borderWidth;

  final Color? hintColor;

  /// readOnly
  final bool readOnly;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final int hintMaxLines;
  final bool enabled;
  final bool autoCorrect;
  final TextInputAction? textInputAction;
  final TextAlign textAlign;
  final void Function(String)? onFieldSubmitted;
  final void Function(String?)? onSaved;
  final bool obscureText;
  final String? helperText;
  final Widget? prefixIcon;
  final String? prefixText;
  final Widget? suffixIcon;
  final String? suffixText;
  final List<TextInputFormatter>? inputFormatters;
  final VoidCallback? onTap;
  final FocusNode? focusNode;
  final TextCapitalization textCapitalization;
  final TextStyle? prefixStyle;
  final TextStyle? suffixStyle;
  final Iterable<String>? autofillHints;
  final Color? fillColor;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final bool isDense;
  final TextStyle? style;
  final bool autofocus;
  final Color? enabledBorderColor;
  final Widget? errorBuilder;
  final double borderRadius;
  final bool autoValidate;
  final bool unfocusOnTapOutside;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Material(
      color: Colors.transparent,
      child: TextFormField(
        smartQuotesType: SmartQuotesType.disabled,
        onTapOutside: unfocusOnTapOutside
            ? (_) {
                FocusManager.instance.primaryFocus?.unfocus();
              }
            : null,
        autovalidateMode: autoValidate ? AutovalidateMode.always : null,
        style: textTheme.bodyMedium,
        cursorColor: colorScheme.onSurfaceVariant,
        controller: controller,
        onChanged: onChanged,
        initialValue: initialValue,
        keyboardType: keyboardType,
        readOnly: readOnly,
        maxLength: maxLength,
        maxLines: obscureText ? 1 : maxLines,
        enabled: enabled,
        textInputAction: textInputAction,
        textAlign: textAlign,
        textAlignVertical: TextAlignVertical.top,
        onFieldSubmitted: onFieldSubmitted,
        onSaved: onSaved,
        obscureText: obscureText,
        inputFormatters: inputFormatters,
        onTap: onTap,
        autocorrect: autoCorrect,
        focusNode: focusNode,
        textCapitalization: textCapitalization,
        autofillHints: autofillHints,
        minLines: minLines,
        autofocus: autofocus,
        expands: expands,
        decoration: InputDecoration(
          counterText: '',
          hintMaxLines: maxLines ?? hintMaxLines,
          labelStyle: textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
          filled: true,
          hintStyle:
              hintStyle ??
              textTheme.bodyMedium?.copyWith(
                color: hintColor ?? colorScheme.onSurfaceVariant,
              ),
          isDense: isDense,
          helperText: helperText,
          prefixIconConstraints: prefixIcon == null
              ? BoxConstraints.tight(const Size(16, 16))
              : null,
          prefixIcon: _buildFieldIcon(prefixIcon) ?? const SizedBox(width: 0),
          prefixText: prefixText,
          suffixIcon: _buildFieldIcon(suffixIcon),
          suffixText: suffixText,
          hintText: hintText,
          labelText: labelText,
          floatingLabelStyle: textTheme.bodyLarge?.copyWith(
            color: colorScheme.onPrimary,
          ),
          fillColor: fillColor ?? Colors.transparent,
          contentPadding: contentPadding,
          errorText: errorText,
          error: errorBuilder,
          errorMaxLines: 3,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(
              width: borderWidth,
              color: borderColor ?? Colors.white.withAlpha(50),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(
              width: borderWidth + 2,
              color: focusBorderColor ?? Colors.white.withAlpha(50),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(
              width: borderWidth,
              color: borderColor ?? Colors.white.withAlpha(50),
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(
              width: borderWidth,
              color: borderColor ?? Colors.white.withAlpha(50),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(
              width: borderWidth,
              color: borderColor ?? Colors.white.withAlpha(50),
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(
              width: borderWidth,
              color: borderColor ?? Colors.white.withAlpha(50),
            ),
          ),
        ),
        validator: validator,
      ),
    );
  }
}

Widget? _buildFieldIcon(Widget? icon) {
  return icon is Icon
      ? Padding(
          padding: const EdgeInsetsDirectional.only(start: 12, end: 12),
          child: icon, // myIcon is a 48px-wide widget.
        )
      : (icon is Widget
            ? icon is Text
                  ? Padding(
                      padding: const EdgeInsetsDirectional.only(end: 12),
                      child: icon, // myIcon is a 48px-wide widget.
                    )
                  : icon
            : null);
}
