import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
{{#dependency_provider_import}}
import '{{dependency_provider_import}}';
{{/dependency_provider_import}}{{^dependency_provider_import}}{{#is_remote}}
import 'package:starter_kit/core/providers/data/endpoints/{{name.snakeCase}}.endpoint.provider.dart';
{{/is_remote}}{{^is_remote}}
import 'package:starter_kit/core/providers/data/storages/{{name.snakeCase}}.storage.provider.dart';
{{/is_remote}}{{/dependency_provider_import}}
import 'package:starter_kit/data/datasources/{{#is_remote}}remote{{/is_remote}}{{^is_remote}}local{{/is_remote}}/{{name.snakeCase}}.{{#is_remote}}remote{{/is_remote}}{{^is_remote}}local{{/is_remote}}.data_source.dart';
import 'package:starter_kit/data/datasources/{{#is_remote}}remote{{/is_remote}}{{^is_remote}}local{{/is_remote}}/impl/{{name.snakeCase}}.{{#is_remote}}remote{{/is_remote}}{{^is_remote}}local{{/is_remote}}.data_source.impl.dart';

part '{{name.snakeCase}}.{{#is_remote}}remote{{/is_remote}}{{^is_remote}}local{{/is_remote}}.data_source.provider.g.dart';

/// {{name.pascalCase}} {{#is_remote}}Remote{{/is_remote}}{{^is_remote}}Local{{/is_remote}} Data Source provider
@riverpod
Future<{{name.pascalCase}}{{#is_remote}}Remote{{/is_remote}}{{^is_remote}}Local{{/is_remote}}DataSource>
    {{name.camelCase}}{{#is_remote}}Remote{{/is_remote}}{{^is_remote}}Local{{/is_remote}}DataSource(
  Ref ref,
) async {
  final dependency = await ref.watch(
    {{#dependency_provider}}{{dependency_provider}}{{/dependency_provider}}{{^dependency_provider}}{{#is_remote}}{{name.camelCase}}EndpointProvider{{/is_remote}}{{^is_remote}}{{name.camelCase}}DependencyProvider{{/is_remote}}{{/dependency_provider}}.future,
  );

  return {{name.pascalCase}}{{#is_remote}}Remote{{/is_remote}}{{^is_remote}}Local{{/is_remote}}DataSourceImpl(
    {{#is_remote}}endpoint{{/is_remote}}{{^is_remote}}storage{{/is_remote}}: dependency,
  );
}
