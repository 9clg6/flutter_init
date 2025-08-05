// ignore_for_file: public_member_api_docs Too much property

import 'package:flutter/material.dart';
import 'package:starter_kit/presentation/widgets/text_variant.dart';

/// Custom Button
class CustomButton extends StatelessWidget {
  /// constructor
  const CustomButton({
    required this.title,
    super.key,
    this.icon,
    this.backgroundColor,
    this.titleColor = Colors.white,
    this.iconColor = Colors.white,
    this.onTap,
    this.onIconTap,
    this.inverted = false,
    this.border = false,
    this.boldTitle = false,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.enable = true,
    this.widthPadding = 16,
    this.quarterRotate = 0,
    this.iconPadding = 4,
    this.expanded = false,
    this.isLoading = false,
    this.borderColor,
    this.iconAtEnd = true,
  });

  final Color? backgroundColor;

  final String title;

  final Color titleColor;

  final IconData? icon;

  final Color? iconColor;

  final VoidCallback? onTap;

  final VoidCallback? onIconTap;

  final bool inverted;

  final bool border;

  final bool boldTitle;

  final MainAxisAlignment mainAxisAlignment;

  final bool enable;

  final double widthPadding;

  final int quarterRotate;

  final double iconPadding;

  final bool expanded;

  final bool isLoading;

  final Color? borderColor;

  final bool iconAtEnd;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color backgroundColor = this.backgroundColor ?? colorScheme.primary;

    return Material(
      color: inverted
          ? enable
                ? Colors.transparent
                : titleColor.withAlpha(40)
          : enable
          ? backgroundColor
          : colorScheme.primaryContainer,
      borderRadius: BorderRadius.circular(28),
      child: InkWell(
        onTap: enable ? onTap : null,
        borderRadius: BorderRadius.circular(28),
        child: Container(
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            border: border
                ? Border.all(color: borderColor ?? colorScheme.outlineVariant)
                : null,
          ),
          padding: EdgeInsets.symmetric(horizontal: widthPadding),
          child: isLoading
              ? Center(
                  child: SizedBox(
                    height: 25,
                    width: 25,
                    child: CircularProgressIndicator(
                      color: inverted ? colorScheme.onPrimary : titleColor,
                    ),
                  ),
                )
              : Row(
                  mainAxisAlignment: mainAxisAlignment,
                  children: <Widget>[
                    if (expanded)
                      Expanded(
                        child: TextVariant(
                          title,
                          variantType: TextVariantType.labelMedium,
                          color: inverted ? colorScheme.onSurface : titleColor,
                          fontWeight: boldTitle ? FontWeight.w700 : null,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                      )
                    else if (icon != null && !iconAtEnd)
                      Padding(
                        padding: EdgeInsets.only(right: iconPadding),
                        child: InkWell(
                          onTap: onIconTap,
                          child: RotatedBox(
                            quarterTurns: quarterRotate,
                            child: Icon(icon, color: iconColor),
                          ),
                        ),
                      ),
                    TextVariant(
                      title,
                      variantType: TextVariantType.labelMedium,
                      color: inverted ? colorScheme.onSurface : titleColor,
                      fontWeight: boldTitle ? FontWeight.w700 : null,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                    if (icon != null && iconAtEnd)
                      Padding(
                        padding: EdgeInsets.only(left: iconPadding),
                        child: InkWell(
                          onTap: onIconTap,
                          child: RotatedBox(
                            quarterTurns: quarterRotate,
                            child: Icon(icon, color: iconColor),
                          ),
                        ),
                      ),
                  ],
                ),
        ),
      ),
    );
  }
}
