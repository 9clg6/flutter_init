import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:starter_kit/presentation/widgets/text_variant.dart';

/// Custom app bar
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// Constructor
  const CustomAppBar({
    super.key,
    this.title,
    this.onLeadingTap,
    this.isCrossIcon = false,
    this.isPopIconAtEnd = false,
  });

  /// Title
  final TextVariant? title;

  /// On leading tap
  final Future<void> Function()? onLeadingTap;

  /// Is cross icon
  final bool isCrossIcon;

  /// Is pop icon at end
  final bool isPopIconAtEnd;

  /// Build
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.transparent,
      automaticallyImplyLeading: false,
      leading: !isPopIconAtEnd
          ? IconButton(
              onPressed: onLeadingTap ?? () => context.router.maybePop(),
              icon: isCrossIcon
                  ? const Icon(Icons.close)
                  : const Icon(Icons.arrow_back),
            )
          : null,
      actions: isPopIconAtEnd
          ? <Widget>[
              IconButton(
                onPressed: onLeadingTap ?? () => context.router.maybePop(),
                icon: isCrossIcon
                    ? const Icon(Icons.close)
                    : const Icon(Icons.arrow_back),
              ),
            ]
          : null,
      title: title,

      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
