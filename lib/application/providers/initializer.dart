import 'package:get_it/get_it.dart';
import 'package:init/application/config/app_config.dart';
import 'package:init/application/providers/initializer.config.dart';
import 'package:injectable/injectable.dart';

///
/// The injector instance
///
final GetIt injector = GetIt.instance;

///
/// Setup injector
///
@InjectableInit(
  ignoreUnregisteredTypes: <Type>[
    AppConfig,
  ],
)
Future<GetIt> initializeInjections(String environment) async =>
    GetIt.I.init(environment: environment);
