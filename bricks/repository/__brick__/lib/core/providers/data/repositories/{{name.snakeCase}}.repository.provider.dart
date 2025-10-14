import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
{{#has_remote}}import 'package:starter_kit/core/providers/data/datasources/remote/{{name.snakeCase}}.remote.data_source.provider.dart';
import 'package:starter_kit/data/datasources/remote/{{name.snakeCase}}.remote.data_source.dart';
{{/has_remote}}{{#has_local}}import 'package:starter_kit/core/providers/data/datasources/local/{{name.snakeCase}}.local.data_source.provider.dart';
import 'package:starter_kit/data/datasources/local/{{name.snakeCase}}.local.data_source.dart';
{{/has_local}}import 'package:starter_kit/data/repositories/{{name.snakeCase}}.repository.impl.dart';
import 'package:starter_kit/domain/repositories/{{name.snakeCase}}.repository.dart';

part '{{name.snakeCase}}.repository.provider.g.dart';

/// {{name.pascalCase}} Repository provider
@riverpod
Future<{{name.pascalCase}}Repository> {{name.camelCase}}Repository(
  Ref ref,
) async {
{{#has_remote}}
  final {{#remote_class}}{{remote_class}}{{/remote_class}}{{^remote_class}}{{name.pascalCase}}RemoteDataSource{{/remote_class}}
      remoteDataSource = await ref.watch(
    {{#remote_provider}}{{remote_provider}}{{/remote_provider}}{{^remote_provider}}{{name.camelCase}}RemoteDataSourceProvider{{/remote_provider}}.future,
  );
{{/has_remote}}{{#has_local}}
  final {{#local_class}}{{local_class}}{{/local_class}}{{^local_class}}{{name.pascalCase}}LocalDataSource{{/local_class}}
      localDataSource = await ref.watch(
    {{#local_provider}}{{local_provider}}{{/local_provider}}{{^local_provider}}{{name.camelCase}}LocalDataSourceProvider{{/local_provider}}.future,
  );
{{/has_local}}

  return {{name.pascalCase}}RepositoryImpl(
{{#has_remote}}
    remoteDataSource: remoteDataSource,
{{/has_remote}}{{#has_local}}
    localDataSource: localDataSource,
{{/has_local}}
  );
}
