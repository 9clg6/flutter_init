
import 'package:starter_kit/foundation/enum/environment.enum.dart';

/// App config
abstract class AppConfig {
  /// Constructor
  const AppConfig({
    required this.appName,
    required this.baseUrl,
    required this.env,
    required this.authBaseUrl,
  });

  /// Environment
  final Environment env;

  /// App name
  final String appName;

  ///Auth base url
  final String authBaseUrl;

  /// Base url
  final String baseUrl;

  /// Is production
  bool get isProd => env == Environment.production;
}
