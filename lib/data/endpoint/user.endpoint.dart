// ignore_for_file: one_member_abstracts fck linter

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:starter_kit/data/model/remote/user.remote.model.dart';

part 'user.endpoint.g.dart';

/// User Endpoint
@RestApi()
abstract class UserEndpoint {
  /// User Endpoint constructor
  factory UserEndpoint(Dio dio) = _UserEndpoint;

  /// get user
  @GET('/own_user')
  Future<List<UserRemoteModel>> getUser();
}
