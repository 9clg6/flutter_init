// ignore_for_file: missing_provider_scope
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:init/application/config/app_config.dart';
import 'package:init/application/providers/initializer.dart';
import 'package:init/ui/app.dart';

///
/// The kernel of the application.
///
class Kernel {
  /// App config
  final AppConfig appConfig;

  ///
  /// Constructor
  ///
  Kernel({
    required this.appConfig,
  });

  ///
  /// Constructor for testing
  ///
  Kernel.test() : appConfig = const AppConfig.test();

  ///
  /// Run the application
  ///
  void run() {
    if (!appConfig.isTest) {
      _run();
    }
  }

  ///
  /// Run the application
  ///
  void _run() {
    runApp(
      build(const App()),
    );
  }

  ///
  /// Proceed to all initialization
  ///
  Future<void> bootstrap() async {
    await _ensureInitialized();
  }

  ///
  /// Ensure all initialization is done
  ///
  Future<void> _ensureInitialized() async {
    // Initialize widgets
    WidgetsFlutterBinding.ensureInitialized();

    await Hive.initFlutter();

    // Register app config
    injector.registerSingleton<AppConfig>(appConfig);
    final GetIt getIt = await initializeInjections(appConfig.environment.name);
    await getIt.allReady();

    // Initialize translations
    await EasyLocalization.ensureInitialized();
  }

  ///
  /// Build [app] surrounded by all necessary widgets
  ///
  Widget build(Widget app) {
    return EasyLocalization(
      supportedLocales: const <Locale>[Locale('fr')],
      path: 'assets/translations',
      child: app,
    );
  }
}
