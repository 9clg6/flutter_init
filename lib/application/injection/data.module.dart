import 'package:init/data/local_data_source/preferences/impl/preferences_local.data_source.impl.dart';
import 'package:init/data/local_data_source/preferences/preferences_local.data_source.dart';
import 'package:init/data/repository/preferences/impl/preferences_repository_impl.dart';
import 'package:init/data/repository/preferences/preferences.repository.dart';
import 'package:init/data/storage/hive_secure_storage.dart';
import 'package:init/domain/service/secure_storage.service.dart';
import 'package:injectable/injectable.dart';

///
/// Module to inject dependencies
///
// Note | Here we inject :
// - Endpoint
//   Example :
//      /// Allow to inject [AuthenticationEndpoint]
//      @injectable
//       AuthenticationEndpoint authenticateEndpoint(DioClient dioClient) =>
//          AuthenticationEndpoint(dioClient);
//
// - Repository
//   Example :
//      /// Allow to inject [TutoRepositoryImpl]
//      @Injectable(as: TutoRepository)
//      TutoRepositoryImpl tutoRepository(
//        TutoRemoteDataSource tutoRemoteDataSource,
//      ) => TutoRepositoryImpl(remoteDataSource: tutoRemoteDataSource);
//
// - DataSource
//   Example :
//      /// Allow to inject [ReservationDataSourceImpl]
//      @Injectable(as: ReservationDataSource)
//      ReservationDataSourceImpl reservationDataSourceImpl(
//        ReservationEndpoint reservationEndpoint,
//      ) => ReservationDataSourceImpl(reservationEndpoint);
//
// - SecureStorage
//   Example :
//      /// Allow to inject [UsersSecureStorage]
//      @singleton
//      @preResolve
//      Future<UsersSecureStorage> usersSecureStorage(
//        SecureStorageService secureStorageService,
//      ) async => UsersSecureStorage.inject(secureStorageService);
//
@module
abstract class DataModule {
  /// Allow to inject [HiveSecureStorage]
  @singleton
  @preResolve
  Future<HiveSecureStorage> hiveSecureStorage(
    SecureStorageService secureStorageService,
  ) async =>
      HiveSecureStorage.inject(secureStorageService);

  /// Allow to inject [PreferencesLocalDataSourcesImpl]
  @Injectable(as: PreferencesLocalDataSource)
  PreferencesLocalDataSourcesImpl preferencesLocalDataSourcesImpl(
    HiveSecureStorage storage,
  ) =>
      PreferencesLocalDataSourcesImpl(storage);

  /// Allow to inject [PreferencesRepositoryImpl]
  @Injectable(as: PreferencesRepository)
  PreferencesRepositoryImpl preferencesRepository(
    PreferencesLocalDataSource localDataSource,
  ) =>
      PreferencesRepositoryImpl(localDataSource);
}
