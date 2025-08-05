import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:starter_kit/data/datasources/local/authentication.local.data_source.dart';
import 'package:starter_kit/data/model/local/auth.local.model.dart';
import 'package:starter_kit/foundation/interfaces/storage.interface.dart';

/// Authentication Data Source
final class AuthenticationLocalDataSourceImpl
    implements AuthenticationLocalDataSource {
  /// Authentication Local Data Source constructor
  AuthenticationLocalDataSourceImpl({
    required StorageInterface<String?> authSecureStorage,
  }) : _authSecureStorage = authSecureStorage;

  final StorageInterface<String?> _authSecureStorage;

  static const String _tokenKey = 'token_key';

  @override
  Future<void> deleteAuthToken() {
    return _authSecureStorage.remove(_tokenKey);
  }

  @override
  Future<AuthLocalModel?> getAuthToken() async {
    final String? result = await _authSecureStorage.get(_tokenKey);

    if (result == null) return null;
    return AuthLocalModel.fromJson(jsonDecode(result) as Map<String, dynamic>);
  }

  @override
  Future<void> saveAuthToken(AuthLocalModel token) async {
    debugPrint('saveAuthToken: ${token.toJson()}');
    await _authSecureStorage.set(_tokenKey, jsonEncode(token.toJson()));
    debugPrint('Authtoken saved');
  }
}
