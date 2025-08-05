import 'package:starter_kit/data/datasources/remote/user.remote.data_source.dart';
import 'package:starter_kit/data/endpoint/user.endpoint.dart';
import 'package:starter_kit/data/model/remote/user.remote.model.dart';

/// User Remote Data Source
final class UserRemoteDataSourceImpl extends UserRemoteDataSource {
  /// User Remote Data Source constructor
  UserRemoteDataSourceImpl({required UserEndpoint endpoint})
    : _endpoint = endpoint;

  /// endpoint
  final UserEndpoint _endpoint;

  @override
  Future<List<UserRemoteModel>> getUser() {
    return _endpoint.getUser();
  }
}
