import 'package:starter_kit/domain/entities/auth.entity.dart';
import 'package:starter_kit/domain/repositories/authentication.repository.dart';
import 'package:starter_kit/foundation/interfaces/future.usecases.dart';

/// Get user use case
class GetAuthUseCase extends FutureUseCase<AuthEntity?> {
  /// Constructor
  GetAuthUseCase({required AuthenticationRepository authenticationRepository})
    : _authenticationRepository = authenticationRepository;

  /// Get user repository
  final AuthenticationRepository _authenticationRepository;

  /// Execute
  @override
  Future<AuthEntity?> invoke() async {
    return _authenticationRepository.getSavedUser();
  }
}
