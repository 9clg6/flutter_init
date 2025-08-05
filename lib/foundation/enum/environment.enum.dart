/// Environment
enum Environment {
  /// Development environment
  development,

  /// Staging environment
  staging,

  /// Production environment
  production,

  /// Test environment
  test, 

  /// Mock environment
  mock;

  /// Get the environment type
  String get type => switch (this) {
        Environment.development => 'dev',
        Environment.staging => 'staging',
        Environment.production => 'prod',
        Environment.test => 'test',
        Environment.mock => 'mock',
      };
}
