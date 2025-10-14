{{#has_remote}}
import 'package:starter_kit/data/datasources/remote/{{name.snakeCase}}.remote.data_source.dart';
{{/has_remote}}{{#has_local}}
import 'package:starter_kit/data/datasources/local/{{name.snakeCase}}.local.data_source.dart';
{{/has_local}}
import 'package:starter_kit/domain/repositories/{{name.snakeCase}}.repository.dart';

/// {{name.pascalCase}} Repository
final class {{name.pascalCase}}RepositoryImpl
    extends {{name.pascalCase}}Repository {
{{#has_remote}}
  /// Remote data source
  final {{#remote_class}}{{remote_class}}{{/remote_class}}{{^remote_class}}{{name.pascalCase}}RemoteDataSource{{/remote_class}}
      _remoteDataSource;
{{/has_remote}}{{#has_local}}

  /// Local data source
  final {{#local_class}}{{local_class}}{{/local_class}}{{^local_class}}{{name.pascalCase}}LocalDataSource{{/local_class}}
      _localDataSource;
{{/has_local}}

{{#has_remote}}{{#has_local}}
  /// {{name.pascalCase}} Repository constructor
  {{name.pascalCase}}RepositoryImpl({
    required {{#remote_class}}{{remote_class}}{{/remote_class}}{{^remote_class}}{{name.pascalCase}}RemoteDataSource{{/remote_class}}
        remoteDataSource,
    required {{#local_class}}{{local_class}}{{/local_class}}{{^local_class}}{{name.pascalCase}}LocalDataSource{{/local_class}}
        localDataSource,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;
{{/has_local}}{{/has_remote}}
{{#has_remote}}{{^has_local}}
  /// {{name.pascalCase}} Repository constructor
  {{name.pascalCase}}RepositoryImpl({
    required {{#remote_class}}{{remote_class}}{{/remote_class}}{{^remote_class}}{{name.pascalCase}}RemoteDataSource{{/remote_class}}
        remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;
{{/has_local}}{{/has_remote}}
{{^has_remote}}{{#has_local}}
  /// {{name.pascalCase}} Repository constructor
  {{name.pascalCase}}RepositoryImpl({
    required {{#local_class}}{{local_class}}{{/local_class}}{{^local_class}}{{name.pascalCase}}LocalDataSource{{/local_class}}
        localDataSource,
  }) : _localDataSource = localDataSource;
{{/has_local}}{{/has_remote}}
{{^has_remote}}{{^has_local}}
  /// {{name.pascalCase}} Repository constructor
  {{name.pascalCase}}RepositoryImpl();
{{/has_local}}{{/has_remote}}

  // TODO: implement repository logic using the injected dependencies.
}
