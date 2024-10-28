///
/// Environment of the runtime execution
///
enum Environment {
  /// Mock
  mock,

  /// Dev
  dev,

  /// Staging
  staging,

  /// Production
  prod,

  /// Test
  test,
}

///
/// Configuration/Parameters required by the application.
///
class AppConfig {
  /// App Name
  final String appName;

  /// Base url for http request
  final String apiBaseUrl;

  /// Current flavor
  final Environment environment;

  /// Header for API key
  final String apiHeader;

  ///-------------------------------------------

  ///
  /// Constructor
  ///
  const AppConfig.dev({
    required this.appName,
    required this.apiBaseUrl,
    required this.apiHeader,
  }) : environment = Environment.dev;

  ///
  /// Staging constructor
  ///
  const AppConfig.staging({
    required this.appName,
    required this.apiBaseUrl,
    required this.apiHeader,
  }) : environment = Environment.staging;

  ///
  /// Production constructor
  ///
  const AppConfig.prod({
    required this.appName,
    required this.apiBaseUrl,
    required this.apiHeader,
  }) : environment = Environment.prod;

  ///
  /// Test constructor
  ///
  const AppConfig.test({
    this.appName = 'APP NAME',
    this.apiBaseUrl = 'https://test.com',
    this.apiHeader = '',
  }) : environment = Environment.test;

  // coverage:ignore-start
  /// Create [AppConfig] from environment variables
  factory AppConfig.fromEnvironment() {
    const String appEnv = String.fromEnvironment(
      'ENVIRONMENT',
      defaultValue: 'prod',
    );

    final Environment environment = Environment.values.firstWhere(
      (Environment element) => element.name == appEnv,
      orElse: () => Environment.prod,
    );

    const String header = String.fromEnvironment('API_HEADER');

    const String apiBaseUrl = '';

    ///-------------------------------------------

    switch (environment) {
      case Environment.test:
        return const AppConfig.test(
          appName: 'Kady test',
          apiBaseUrl: 'https://test_api.com',
        );
      case Environment.mock:
        return const AppConfig.dev(
          appName: 'Kady - Mock',
          apiBaseUrl: 'https://mock_api.com',
          apiHeader: header,
        );
      case Environment.dev:
        return const AppConfig.dev(
          appName: 'Kady - Dev',
          apiBaseUrl: 'https://api-kady-preprod.ffgolf.org',
          apiHeader: header,
        );
      case Environment.staging:
        return const AppConfig.staging(
          appName: 'Kady - Staging',
          apiHeader: header,
          apiBaseUrl: apiBaseUrl,
        );
      default:
        return const AppConfig.prod(
          appName: 'Kady',
          apiBaseUrl: 'https://api-kady-beta.ffgolf.org',
          apiHeader: header,
        );
    }
  }
  // coverage:ignore-end

  ///
  /// Check if it's dev
  ///
  bool get isDev => environment == Environment.dev;

  ///
  /// Check if it's test
  ///
  bool get isTest => environment == Environment.test;

  ///
  /// Check if it's prod
  ///
  bool get isProd => environment == Environment.prod;

  @override
  String toString() {
    return 'AppConfig(appName: $appName, apiBaseUrl: $apiBaseUrl, environment: $environment)';
  }
}
