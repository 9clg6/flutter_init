import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/data/storages/authentication.secure_storage.provider.dart';
import 'package:starter_kit/data/datasources/local/authentication.local.data_source.dart';
import 'package:starter_kit/data/datasources/local/impl/authentication.local.data_source.dart';
import 'package:starter_kit/data/storages/authentication.secure_storage.dart';

part 'authentication.local.data_source.provider.g.dart';

/// Authentication Local Data Source provider
@Riverpod(keepAlive: true)
Future<AuthenticationLocalDataSource> authenticationLocalDataSource(
  Ref ref,
) async {
  final AuthenticationSecureStorage authSecureStorage = await ref.watch(
    authenticationSecureStorageProvider.future,
  );

  return AuthenticationLocalDataSourceImpl(
    authSecureStorage: authSecureStorage,
  );
}
