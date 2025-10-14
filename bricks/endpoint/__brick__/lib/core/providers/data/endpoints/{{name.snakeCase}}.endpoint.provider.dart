import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '{{client_provider_import}}';
import '{{client_class_import}}';
import 'package:starter_kit/data/endpoint/{{name.snakeCase}}.endpoint.dart';

part '{{name.snakeCase}}.endpoint.provider.g.dart';

/// {{name.pascalCase}} Endpoint provider
@riverpod
Future<{{name.pascalCase}}Endpoint> {{name.camelCase}}Endpoint(Ref ref) async {
  final {{client_class}} dio = await ref.watch({{client_provider}}.future);

  return {{name.pascalCase}}Endpoint(dio);
}
