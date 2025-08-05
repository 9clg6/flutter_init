import 'package:starter_kit/domain/entities/auth.entity.dart';
import 'package:starter_kit/domain/params/login.param.dart';
import 'package:starter_kit/domain/repositories/authentication.repository.dart';
import 'package:starter_kit/foundation/interfaces/future.usecases.dart';

/// Login Use Case
class LoginUseCase
    extends FutureUseCaseWithParams<AuthEntity, LoginParam> {
  /// Login Use Case constructor
  LoginUseCase({required this.repository});

  /// repository
  final AuthenticationRepository repository;

  @override
  Future<AuthEntity> invoke(LoginParam body) async {
    return repository.login(body);
  }
}
