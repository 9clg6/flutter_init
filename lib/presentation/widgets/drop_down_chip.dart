import 'package:flutter/material.dart';
import 'package:starter_kit/presentation/widgets/tappable_componenent.dart';
import 'package:starter_kit/presentation/widgets/text_variant.dart';

/// A drop down chip
class DropDownChip extends StatelessWidget {
  /// Constructor
  const DropDownChip({
    required this.text,
    required this.onTap,
    required this.componentKey,
    super.key,
  });

  /// The text to display
  final String text;

  /// The on tap callback
  final VoidCallback onTap;

  /// The key of the widget
  final Key componentKey;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return TappableComponent(
      key: componentKey,
      onTap: onTap,
      color: colorScheme.primaryContainer,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(color: colorScheme.outline.withAlpha(100)),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: <Widget>[
            TextVariant(
              text,
              variantType: TextVariantType.labelMedium,
              color: colorScheme.onPrimaryContainer,
            ),
            Icon(
              Icons.arrow_drop_down_rounded,
              size: 20,
              color: colorScheme.onPrimaryContainer,
            ),
          ],
        ),
      ),
    );
  }
}
