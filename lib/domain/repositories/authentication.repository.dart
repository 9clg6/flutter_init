import 'package:starter_kit/domain/entities/auth.entity.dart';
import 'package:starter_kit/domain/params/login.param.dart';

/// Authentication Repository
abstract class AuthenticationRepository {
  /// login
  Future<AuthEntity> login(LoginParam body);

  /// forget password
  Future<void> forgetPassword(LoginParam body);

  /// save auth
  Future<void> saveAuth(AuthEntity params);

  /// get saved user
  Future<AuthEntity?> getSavedUser();

  /// delete auth (logout)
  Future<void> deleteAuth();
}
