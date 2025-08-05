import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/data/repositories/authentication.repository.provider.dart';
import 'package:starter_kit/domain/repositories/authentication.repository.dart';
import 'package:starter_kit/domain/usecases/get_auth.use_case.dart';

part 'get_auth.use_case.provider.g.dart';

/// Get user use case provider
@riverpod
Future<GetAuthUseCase> getAuthUseCase(Ref ref) async {
  final AuthenticationRepository repository = await ref.watch(
    authenticationRepositoryProvider.future,
  );

  return GetAuthUseCase(authenticationRepository: repository);
}
