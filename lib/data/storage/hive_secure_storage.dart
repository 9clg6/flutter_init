import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:init/domain/service/secure_storage.service.dart';
import 'package:init/foundation/interfaces/storage.interface.dart';

///
/// [HiveSecureStorage]
///
/// Use it when you want to save secured data that won't be backed up by the system.
class HiveSecureStorage implements StorageInterface<String?> {
  /// Hive box
  final Box<String> _box;

  /// Box name
  static String get _boxName => r'hive_local_storage';

  ///
  /// Constructor
  ///
  HiveSecureStorage._(this._box);

  ///
  /// Static method to create a new instance of [HiveSecureStorage]
  ///
  static Future<HiveSecureStorage> inject(
    SecureStorageService secureStorageService,
  ) async {
    return HiveSecureStorage._(
      await Hive.openBox<String>(
        _boxName,
        encryptionCipher:
            HiveAesCipher(_keyFromString(secureStorageService.key)),
      ),
    );
  }

  ///
  /// Get list of int from [encryptionKey]
  ///
  static List<int> _keyFromString(String encryptionKey) {
    String key = encryptionKey;
    if (key.length > 32) {
      key = key.substring(0, 32);
    } else if (key.length < 32) {
      key = key + key.substring(0, 32 - key.length);
    }
    return utf8.encode(key);
  }

  ///
  /// Get data from storage
  ///
  @override
  Future<String?> get(String key) async => _box.get(key);

  ///
  /// Delete all data from storage
  ///
  @override
  Future<void> deleteAll() => _box.deleteFromDisk();

  ///
  /// Clear all data from storage
  ///
  @override
  Future<void> clearAll() => _box.clear();

  ///
  /// Check if the storage contains [key]
  ///
  @override
  Future<bool> contains(String key) async => _box.containsKey(key);

  ///
  /// Get all data from storage
  ///
  @override
  Future<List<String?>> getAll() async => _box.values.toList();

  ///
  /// Remove a string value from storage
  ///
  @override
  Future<void> remove(String key) => _box.delete(key);

  ///
  /// Set a string value in storage
  ///
  @override
  Future<void> set(String key, String value) => _box.put(key, value);
}
