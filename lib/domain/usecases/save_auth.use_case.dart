import 'package:flutter/foundation.dart';
import 'package:starter_kit/domain/entities/auth.entity.dart';
import 'package:starter_kit/domain/repositories/authentication.repository.dart';
import 'package:starter_kit/foundation/interfaces/future.usecases.dart';

/// Save Auth Use Case
class SaveAuthUseCase extends FutureUseCaseWithParams<void, AuthEntity> {
  /// Save Auth Use Case constructor
  SaveAuthUseCase({required AuthenticationRepository repository})
    : _repository = repository;

  ///
  final AuthenticationRepository _repository;

  @override
  Future<void> invoke(AuthEntity params) async {
    debugPrint('saveAuth');
    await _repository.saveAuth(params);
  }
}
