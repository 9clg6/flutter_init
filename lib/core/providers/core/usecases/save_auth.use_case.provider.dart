import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/data/repositories/authentication.repository.provider.dart';
import 'package:starter_kit/domain/repositories/authentication.repository.dart';
import 'package:starter_kit/domain/usecases/save_auth.use_case.dart';

part 'save_auth.use_case.provider.g.dart';

/// Save Auth Use Case provider
@riverpod
Future<SaveAuthUseCase> saveAuthUseCase(Ref ref) async {
  final AuthenticationRepository repository = await ref.watch(
    authenticationRepositoryProvider.future,
  );
  return SaveAuthUseCase(repository: repository);
}
