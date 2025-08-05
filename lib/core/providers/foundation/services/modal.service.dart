import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:starter_kit/foundation/routing/app_router.dart';
import 'package:starter_kit/presentation/widgets/custom_button.dart';
import 'package:starter_kit/presentation/widgets/text_variant.dart';

/// [ModalService]
class ModalService {
  /// Constructor
  ModalService({required AppRouter appRouter}) : _appRouter = appRouter;

  /// App router
  final AppRouter _appRouter;

  /// showScaffoldCupertinoModal
  /// Show a cupertino modal with a scaffold
  Future<T?> _showScaffoldCupertinoModal<T>({
    required Widget child,
    bool canBeDismiss = true,
    Color? backgroundColor,
  }) async {
    final BuildContext? context = _appRouter.navigatorKey.currentContext;
    if (context == null) return null;

    return showCupertinoModalPopup(
      barrierDismissible: canBeDismiss,
      barrierColor: canBeDismiss
          ? Colors.black.withAlpha(40)
          : kCupertinoModalBarrierColor,
      context: context,
      builder: (_) => SafeArea(
        bottom: false,
        child: canBeDismiss
            ? Dismissible(
                key: GlobalKey(),
                resizeDuration: null,
                direction: DismissDirection.down,
                onDismissed: (_) => _appRouter.pop(),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(28),
                    topRight: Radius.circular(28),
                  ),
                  child: Material(
                    color: backgroundColor ?? Colors.white,
                    child: child,
                  ),
                ),
              )
            : ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: Material(color: Colors.white, child: child),
              ),
      ),
    );
  }

  /// showRenameKitModal
  /// Show a modal to rename a kit
  Future<void> showRenameKitModal(
    int id, {
    required void Function(String) onValidated,
    required String currentName,
  }) async {
    final BuildContext? context = _appRouter.navigatorKey.currentContext;
    if (context == null) return;
    final double screenHeight = MediaQuery.of(context).size.height;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;
    final TextEditingController textEditingController = TextEditingController(
      text: currentName,
    );

    return _showScaffoldCupertinoModal(
      child: SizedBox(
        height: screenHeight * 0.8,
        child: Container(
          decoration: BoxDecoration(
            color: colorScheme.surfaceContainerHigh,
            borderRadius: BorderRadius.circular(28),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: SizedBox(
                  width: 32,
                  height: 36,
                  child: Divider(
                    color: colorScheme.outline,
                    height: 1,
                    thickness: 4,
                    radius: BorderRadius.circular(16),
                  ),
                ),
              ),
              const Gap(32),
              const TextVariant(
                'Renommer mon kit',
                variantType: TextVariantType.headlineMedium,
              ),
              const Gap(8),
              const TextVariant(
                'Choisissez comment appeler ce kit. '
                'Le nouveau nom sera visible sur la page d’accueil.',
              ),
              const Gap(32),
              TextField(
                key: const Key('renameKitModalTextField'),
                controller: textEditingController,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: 'Nom du kit',
                  labelStyle: textTheme.labelSmall?.copyWith(
                    color: colorScheme.onSurface,
                    fontSize: 16,
                  ),
                  suffixIcon: IconButton(
                    onPressed: textEditingController.clear,
                    icon: const Icon(Icons.close),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: colorScheme.onSurface),
                  ),
                  fillColor: colorScheme.surfaceContainerHigh,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: colorScheme.primary,
                      width: 2,
                    ),
                  ),
                ),
                onSubmitted: (_) => onValidated(textEditingController.text),
              ),
              const Gap(32),
              CustomButton(
                title: 'Enregistrer',
                onTap: () {
                  if (textEditingController.text.isNotEmpty) {
                    onValidated(textEditingController.text);
                    _appRouter.pop();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
