import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:init/application/providers/initializer.dart';
import 'package:init/foundation/interfaces/theme.service_interface.dart';
import 'package:init/foundation/routing/app_router.dart';

///
/// The main app widget.
///
class App extends StatefulWidget {
  ///
  /// Constructor
  ///
  const App({super.key});

  ///
  /// Creates the state of the app widget.
  ///
  @override
  State<App> createState() => _AppState();
}

///
/// The state of the app widget.
///
class _AppState extends State<App> {
  ///
  /// Builds the app widget.
  ///
  @override
  Widget build(BuildContext context) {
    final AppRouter appRouter = injector<AppRouter>();
    final IThemeService themeService = injector<IThemeService>();

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
      child: ProviderScope(
        child: MaterialApp.router(
          routerConfig: appRouter.config(
            includePrefixMatches: true,
          ),
          debugShowCheckedModeBanner: false,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          darkTheme: themeService.darkTheme,
          theme: themeService.currentTheme,
          themeMode: themeService.themeMode,
          locale: context.locale,
          builder: (_, child) => child!,
        ),
      ),
    );
  }
}
