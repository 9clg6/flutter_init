import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:starter_kit/data/bodies/login.param.dart';
import 'package:starter_kit/data/clients/dio.authentication.client.dart';
import 'package:starter_kit/data/clients/extra_client.dart';

part 'authentication.endpoint.g.dart';

/// Authentication Endpoint
@RestApi()
abstract class AuthenticationEndpoint {
  /// Authentication Endpoint constructor
  factory AuthenticationEndpoint(DioAuthenticationClient dio) =
      _AuthenticationEndpoint;

  /// login
  @Extra(<String, Object>{ExtraClient.removeAuthToken: true})
  @POST('/login')
  Future<String> login(@Body() LoginBody body);

  /// forget password
  @Extra(<String, Object>{ExtraClient.removeAuthToken: true})
  @POST('/forget-password')
  Future<void> forgetPassword(@Body() LoginBody body);
}
