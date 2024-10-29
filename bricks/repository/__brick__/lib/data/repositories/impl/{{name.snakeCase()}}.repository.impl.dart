
///
/// [{{name.pascalCase()}}RepositoryImpl]
///
interface class {{name.pascalCase()}}RepositoryImpl implements {{name.pascalCase()}}Repository {
  /// remote data source
  final {{name.pascalCase()}}RemoteDataSource _remoteDataSource;

  /// local data source
  final {{name.pascalCase()}}LocalDataSource _localDataSource;

  ///
  /// Constructor
  ///
  {{name.pascalCase()}}RepositoryImpl({
    required {{name.pascalCase()}}RemoteDataSource remoteDataSource,
    required {{name.pascalCase()}}LocalDataSource localDataSource,
  }) :  _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;
}
