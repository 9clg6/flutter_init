import 'package:starter_kit/data/model/remote/user.remote.model.dart';

/// User Remote Data Source
abstract class UserRemoteDataSource {
  /// get user
  Future<List<UserRemoteModel>> getUser();
}
