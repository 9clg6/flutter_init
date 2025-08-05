import 'package:starter_kit/domain/repositories/authentication.repository.dart';
import 'package:starter_kit/foundation/interfaces/future.usecases.dart';

/// Logout Use Case
class LogoutUseCase extends FutureUseCase<void> {
  /// Logout Use Case constructor
  LogoutUseCase({required this.repository});

  /// repository
  final AuthenticationRepository repository;

  @override
  Future<void> invoke() async {
    return repository.deleteAuth();
  }
}
