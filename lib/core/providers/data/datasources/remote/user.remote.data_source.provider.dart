import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/data/endpoints/user.endpoint.provider.dart';
import 'package:starter_kit/data/datasources/remote/impl/user.remote.data_source.impl.dart';
import 'package:starter_kit/data/datasources/remote/user.remote.data_source.dart';
import 'package:starter_kit/data/endpoint/user.endpoint.dart';

part 'user.remote.data_source.provider.g.dart';

/// User remote data source provider
@riverpod
Future<UserRemoteDataSource> userRemoteDataSource(Ref ref) async {
  final UserEndpoint endpoint = await ref.watch(userEndpointProvider.future);

  return UserRemoteDataSourceImpl(endpoint: endpoint);
}
