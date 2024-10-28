// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:init/application/injection/data.module.dart' as _i35;
import 'package:init/application/injection/domain.module.dart' as _i852;
import 'package:init/application/injection/foundation.module.dart' as _i950;
import 'package:init/data/local_data_source/preferences/preferences_local.data_source.dart'
    as _i88;
import 'package:init/data/repository/preferences/preferences.repository.dart'
    as _i333;
import 'package:init/data/storage/hive_secure_storage.dart' as _i323;
import 'package:init/domain/service/secure_storage.service.dart' as _i861;
import 'package:init/domain/use_case/get_theme.use_case.dart' as _i168;
import 'package:init/foundation/interfaces/theme.service_interface.dart'
    as _i457;
import 'package:init/foundation/routing/app_router.dart' as _i500;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final domainModule = _$DomainModule();
    final coreModule = _$CoreModule();
    final dataModule = _$DataModule();
    gh.factory<_i558.FlutterSecureStorage>(() => domainModule.storage());
    gh.singleton<_i500.AppRouter>(() => coreModule.appRouter());
    await gh.singletonAsync<_i861.SecureStorageService>(
      () => domainModule.secureStorageService(gh<_i558.FlutterSecureStorage>()),
      preResolve: true,
    );
    await gh.singletonAsync<_i323.HiveSecureStorage>(
      () => dataModule.hiveSecureStorage(gh<_i861.SecureStorageService>()),
      preResolve: true,
    );
    gh.factory<_i88.PreferencesLocalDataSource>(() => dataModule
        .preferencesLocalDataSourcesImpl(gh<_i323.HiveSecureStorage>()));
    gh.factory<_i333.PreferencesRepository>(() => dataModule
        .preferencesRepository(gh<_i88.PreferencesLocalDataSource>()));
    gh.factory<_i168.GetThemeUseCase>(
        () => domainModule.getThemeUseCase(gh<_i333.PreferencesRepository>()));
    await gh.singletonAsync<_i457.IThemeService>(
      () => domainModule.themeService(gh<_i168.GetThemeUseCase>()),
      preResolve: true,
    );
    return this;
  }
}

class _$DomainModule extends _i852.DomainModule {}

class _$CoreModule extends _i950.CoreModule {}

class _$DataModule extends _i35.DataModule {}
