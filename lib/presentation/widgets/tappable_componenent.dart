import 'package:flutter/material.dart';

/// A tappable component
class TappableComponent extends StatelessWidget {
  /// Constructor
  const TappableComponent({
    required this.child,
    required this.onTap,
    required this.color,
    this.borderRadius,
    super.key,
  });

  /// The child widget
  final Widget child;

  /// The on tap callback
  final VoidCallback onTap;

  /// The color of the component
  final Color color;

  /// The border radius of the component
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: borderRadius ?? BorderRadius.circular(12),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(onTap: onTap, child: child),
    );
  }
}
