import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/foundation/config/app_config.dart';
import 'package:starter_kit/foundation/config/impl/app_config.dev.dart';
import 'package:starter_kit/foundation/config/impl/app_config.mock.dart';
import 'package:starter_kit/foundation/config/impl/app_config.prod.dart';
import 'package:starter_kit/foundation/config/impl/app_config.staging.dart';
import 'package:starter_kit/foundation/config/impl/app_config.test.dart';
import 'package:starter_kit/foundation/enum/environment.enum.dart';

part 'appconfig.provider.g.dart';

/// App config provider
@riverpod
AppConfig appConfig(Ref ref) {
  const String envKey = 'ENVIRONMENT';
  const String defaultEnv = 'PRODUCTION';

  late AppConfig appConfig;

  const String appEnv = String.fromEnvironment(
    envKey,
    defaultValue: defaultEnv,
  );

  final Environment environment = Environment.values.firstWhere(
    (Environment element) => element.name == appEnv,
    orElse: () => Environment.production,
  );

  switch (environment) {
    case Environment.development:
      appConfig = AppConfigDev();
    case Environment.staging:
      appConfig = AppConfigStaging();
    case Environment.production:
      appConfig = AppConfigProd();
    case Environment.test:
      appConfig = AppConfigTest();
    case Environment.mock:
      appConfig = AppConfigMock();
  }

  return appConfig;
}
