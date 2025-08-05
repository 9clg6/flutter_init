import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/data/endpoints/authentication.endpoint.provider.dart';
import 'package:starter_kit/data/datasources/remote/authentication.remote.data_source.dart';
import 'package:starter_kit/data/datasources/remote/impl/authentication.remote.data_source.impl.dart';
import 'package:starter_kit/data/endpoint/authentication.endpoint.dart';

part 'authentication.remote.data_source.provider.g.dart';

/// Authentication Data Source provider
@riverpod
Future<AuthenticationRemoteDataSource> authenticationRemoteDataSource(
  Ref ref,
) async {
  final AuthenticationEndpoint endpoint = await ref.watch(
    authenticationEndpointProvider.future,
  );

  return AuthenticationRemoteDataSourceImpl(endpoint: endpoint);
}
