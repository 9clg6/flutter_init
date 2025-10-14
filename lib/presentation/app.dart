import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_kit/core/providers/kernel.provider.dart';
import 'package:starter_kit/core/providers/presentation/router.provider.dart';
import 'package:starter_kit/foundation/routing/app_router.dart';
import 'package:starter_kit/foundation/theming/theme.dart';

/// App startup widget
class AppStartup extends ConsumerWidget {
  /// Constructor
  const AppStartup({required this.onLoaded, super.key});

  /// The widget to build when the app is loaded
  final WidgetBuilder onLoaded;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<void> appState = ref.watch(kernelProvider);

    return appState.when(
      data: (_) {
        return onLoaded(context);
      },
      error: (Object error, StackTrace stackTrace) {
        debugPrint(error.toString());
        debugPrint(stackTrace.toString());
        return Center(
          child: Text(error.toString(), style: const TextStyle(fontSize: 12)),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}

/// Root app widget
class RootAppWidget extends ConsumerWidget {
  /// Constructor
  const RootAppWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppRouter router = ref.watch(routerProvider);
    const MaterialTheme theme = MaterialTheme();

    return MaterialApp.router(
      routerConfig: router.config(),
      builder: (_, Widget? child) {
        return AppStartup(onLoaded: (_) => child!);
      },
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      themeMode: ThemeMode.light,
      theme: theme.light(),
      locale: context.locale,
      debugShowCheckedModeBanner: false,
    );
  }
}
