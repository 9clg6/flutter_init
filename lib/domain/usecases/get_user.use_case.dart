import 'package:starter_kit/domain/entities/user.entity.dart';
import 'package:starter_kit/domain/repositories/user.repository.dart';
import 'package:starter_kit/foundation/interfaces/future.usecases.dart';

/// Get user use case
final class GetUserUseCase extends FutureUseCase<UserEntity> {
  /// Get user use case constructor
  GetUserUseCase({required UserRepository userRepository})
    : _userRepository = userRepository;

  final UserRepository _userRepository;

  @override
  Future<UserEntity> invoke() {
    return _userRepository.getUser();
  }
}
