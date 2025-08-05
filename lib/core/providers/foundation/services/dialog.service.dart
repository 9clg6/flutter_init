import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/foundation/routing/app_router.dart';
import 'package:starter_kit/presentation/widgets/custom_button.dart';
import 'package:starter_kit/presentation/widgets/text_variant.dart';

/// Dialog service
class DialogService {
  /// Constructor
  DialogService({required AppRouter appRouter}) : _appRouter = appRouter;

  /// App router
  final AppRouter _appRouter;

  /// Dialogs
  bool _isDialogOpen = false;

  ///
  /// Custom showDialog wrapper that includes logging
  ///
  Future<T?> _showCustomDialog<T>({
    required BuildContext context,
    required WidgetBuilder builder,
    bool barrierDismissible = true,
    String? dialogName,
  }) async {
    if (_isDialogOpen) return null;
    _isDialogOpen = true;
    return showDialog<T>(
      context: context,
      builder: builder,
      barrierDismissible: barrierDismissible,
    );
  }

  ///
  /// Custom showCupertinoDialog wrapper that includes logging
  ///
  // ignore: unused_element TODO REMOVE
  Future<T?> _showCupertinoModalPopup<T>({
    required BuildContext context,
    required WidgetBuilder builder,
    bool barrierDismissible = true,
    String? dialogName,
  }) async {
    if (_isDialogOpen) return null;
    _isDialogOpen = true;
    return showCupertinoModalPopup<T>(
      context: context,
      builder: builder,
      barrierDismissible: barrierDismissible,
    );
  }

  /// Standard dialog
  Future<T?>? showP2SDialog<T>({
    required String title,
    required String description,
    required String buttonTitle,
    VoidCallback? onButtonTap,
    String? buttonTitle2,
    VoidCallback? onButton2Tap,
  }) {
    final BuildContext? context = _appRouter.navigatorKey.currentContext;
    if (context == null) return null;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return _showCustomDialog(
      context: context,
      builder:
          (BuildContext context) => Center(
            child: Material(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 32,
                  ),
                  decoration: BoxDecoration(
                    color: colorScheme.surfaceContainerHigh,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextVariant(
                        title,
                        variantType: TextVariantType.headlineMedium,
                      ),
                      const Gap(8),
                      TextVariant(description),
                      const Gap(24),
                      CustomButton(
                        title: buttonTitle,
                        onTap: onButtonTap ?? _appRouter.pop,
                      ),
                      const Gap(16),
                      if (buttonTitle2 != null)
                        CustomButton(
                          title: buttonTitle2,
                          onTap: onButton2Tap,
                          inverted: true,
                          border: true,
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
    );
  }

  /// Show kit not found dialog
  Future<void>? showKitNotFoundDialog({
    required VoidCallback onRetryTap,
    required VoidCallback onNeedHelpTap,
  }) {
    return showP2SDialog(
      title: LocaleKeys.kitNotFound.tr(),
      description: LocaleKeys.kitNotFoundDescription.tr(),
      buttonTitle: LocaleKeys.retry.tr(),
      buttonTitle2: LocaleKeys.needHelp.tr(),
      onButtonTap: onRetryTap,
      onButton2Tap: onNeedHelpTap,
    );
  }

  /// Show connection error dialog
  Future<void>? showConnectionErrorDialog() {
    return showP2SDialog(
      title: LocaleKeys.connectionError.tr(),
      description: LocaleKeys.weDidntSucceed.tr(),
      buttonTitle: LocaleKeys.retry.tr(),
      buttonTitle2: LocaleKeys.cancel.tr(),
      onButtonTap: _appRouter.pop,
      onButton2Tap: () {
        // TODO(clement): FAQ
      },
    );
  }

  /// Show login error dialog
  Future<void>? showLoginErrorDialog({
    required String title,
    required String message,
  }) {
    return showP2SDialog(
      title: title,
      description: message,
      buttonTitle: LocaleKeys.ok.tr(),
    );
  }

  /// Show permissions not granted dialog
  Future<void>? showPermissionsNotGrantedDialog() {
    return showP2SDialog(
      title: LocaleKeys.errorOccured.tr(),
      description: LocaleKeys.permissionsBluetoothNotGrantedDescription.tr(),
      buttonTitle: LocaleKeys.ok.tr(),
      buttonTitle2: LocaleKeys.needHelp.tr(),
      onButtonTap: _appRouter.pop,
      onButton2Tap: () {
        // TODO(clement): FAQ
      },
    );
  }
}
