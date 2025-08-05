import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/data/datasources/remote/user.remote.data_source.provider.dart';
import 'package:starter_kit/data/datasources/remote/user.remote.data_source.dart';
import 'package:starter_kit/data/repositories/user.repository.impl.dart';
import 'package:starter_kit/domain/repositories/user.repository.dart';

part 'user.repository.provider.g.dart';

/// User repository provider
@riverpod
Future<UserRepository> userRepository(Ref ref) async {
  final UserRemoteDataSource userRemoteDataSource = await ref.watch(
    userRemoteDataSourceProvider.future,
  );

  return UserRepositoryImpl(userRemoteDataSource: userRemoteDataSource);
}
