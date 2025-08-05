import 'package:starter_kit/foundation/config/app_config.dart';
import 'package:starter_kit/foundation/enum/environment.enum.dart';

/// App config dev
final class AppConfigTest implements AppConfig {
  @override
  String get baseUrl => '';

  @override
  String get appName => 'Starter Kit - Test';

  @override
  Environment get env => Environment.test;
  
  @override
  String get authBaseUrl => '';

  @override
  bool get isProd => false;
}
