// ignore_for_file: one_member_abstracts

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part '{{name.snakeCase}}.endpoint.g.dart';

/// {{name.pascalCase}} Endpoint
@RestApi{{#base_url}}(baseUrl: '{{base_url}}'){{/base_url}}
abstract class {{name.pascalCase}}Endpoint {
  /// {{name.pascalCase}} Endpoint constructor
  factory {{name.pascalCase}}Endpoint(Dio dio) = _{{name.pascalCase}}Endpoint;

  /// Example request
  @GET('{{route_path}}')
  Future<void> example();
}
