import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast_io.dart';
import 'package:starter_kit/foundation/interfaces/storage.interface.dart';

/// Authentication Secure Storage
class AuthenticationSecureStorage implements StorageInterface<String?> {
  /// Authentication Secure Storage constructor
  AuthenticationSecureStorage._(this._database, this._store);
  final Database _database;
  final StoreRef<String, String> _store;

  static String get _boxName => 'auth_local_storage.db';

  /// Static method to create a new instance of [AuthenticationSecureStorage]
  static Future<AuthenticationSecureStorage> inject() async {
    final Directory dir = await getApplicationDocumentsDirectory();
    await dir.create(recursive: true);
    final String dbPath = join(dir.path, _boxName);
    final Database db = await databaseFactoryIo.openDatabase(dbPath);

    return AuthenticationSecureStorage._(db, StoreRef<String, String>.main());
  }

  @override
  Future<String?> get(String key) async => _store.record(key).get(_database);

  @override
  Future<void> deleteAll() => _store.drop(_database);

  @override
  Future<bool> contains(String key) async =>
      _store.record(key).exists(_database);

  @override
  Future<void> remove(String key) => _store.record(key).delete(_database);

  @override
  Future<void> set(String key, String value) =>
      _store.record(key).put(_database, value);

  @override
  Future<void> removeFromList(String key, String value) =>
      throw UnimplementedError();
}
