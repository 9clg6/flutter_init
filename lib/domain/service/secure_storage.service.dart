import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';

///
/// [SecureStorageService]
/// should be use for non object
class SecureStorageService {
  static const String _encryptedKey = r'encrypted_key';

  final String _key;

  ///
  String get key => _key;

  /// Constructor
  SecureStorageService._(this._key);

  ///
  static Future<SecureStorageService> inject(
    FlutterSecureStorage storage,
  ) async {
    late final String key;

    if (!(await storage.containsKey(key: _encryptedKey))) {
      final List<int> bytes = Hive.generateSecureKey();
      key = base64Encode(bytes);
      await storage.write(key: _encryptedKey, value: key);
    } else {
      key = (await storage.read(key: _encryptedKey))!;
    }
    SecureStorageService service = SecureStorageService._(key);

    return service;
  }
}
