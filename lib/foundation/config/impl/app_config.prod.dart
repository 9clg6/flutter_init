import 'package:starter_kit/foundation/config/app_config.dart';
import 'package:starter_kit/foundation/enum/environment.enum.dart';

/// App config prod
final class AppConfigProd implements AppConfig {
  @override
  String get baseUrl => 'https://api.example.com';

  @override
  String get appName => 'Starter Kit';

  @override
  Environment get env => Environment.production;
  
  @override
  String get authBaseUrl => 'https://api.example.com/auth';

  @override
  bool get isProd => true;
}
