import 'package:starter_kit/foundation/config/app_config.dart';
import 'package:starter_kit/foundation/enum/environment.enum.dart';

/// App config mock
final class AppConfigMock implements AppConfig {
  @override
  String get baseUrl => '';

  @override
  String get appName => 'Starter Kit - Mock';
  
  @override
  Environment get env => Environment.mock;
  
  @override
  String get authBaseUrl => '';

  @override
  bool get isProd => false;
}
