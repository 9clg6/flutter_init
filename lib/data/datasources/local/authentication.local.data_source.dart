import 'package:starter_kit/data/model/local/auth.local.model.dart';

/// Authentication Data Source
abstract class AuthenticationLocalDataSource {
  /// save auth token
  Future<void> saveAuthToken(AuthLocalModel token);

  /// get auth token
  Future<AuthLocalModel?> getAuthToken();

  /// delete auth token
  Future<void> deleteAuthToken();
}
