import 'package:starter_kit/data/datasources/{{#is_remote}}remote{{/is_remote}}{{^is_remote}}local{{/is_remote}}/{{name.snakeCase}}.{{#is_remote}}remote{{/is_remote}}{{^is_remote}}local{{/is_remote}}.data_source.dart';
{{#dependency_import}}
import '{{dependency_import}}';
{{/dependency_import}}{{^dependency_import}}{{#is_remote}}
import 'package:starter_kit/data/endpoint/{{name.snakeCase}}.endpoint.dart';
{{/is_remote}}{{^is_remote}}
import 'package:starter_kit/foundation/interfaces/storage.interface.dart';
{{/is_remote}}{{/dependency_import}}

/// {{name.pascalCase}} {{#is_remote}}Remote{{/is_remote}}{{^is_remote}}Local{{/is_remote}} Data Source
final class {{name.pascalCase}}{{#is_remote}}Remote{{/is_remote}}{{^is_remote}}Local{{/is_remote}}DataSourceImpl
    extends {{name.pascalCase}}{{#is_remote}}Remote{{/is_remote}}{{^is_remote}}Local{{/is_remote}}DataSource {
  /// {{name.pascalCase}} {{#is_remote}}Remote{{/is_remote}}{{^is_remote}}Local{{/is_remote}} Data Source constructor
  {{name.pascalCase}}{{#is_remote}}Remote{{/is_remote}}{{^is_remote}}Local{{/is_remote}}DataSourceImpl({
    required {{#dependency_class}}{{dependency_class}}{{/dependency_class}}{{^dependency_class}}{{#is_remote}}{{name.pascalCase}}Endpoint{{/is_remote}}{{^is_remote}}StorageInterface<Map<String, dynamic>>{{/is_remote}}{{/dependency_class}}
        {{#is_remote}}endpoint{{/is_remote}}{{^is_remote}}storage{{/is_remote}},
  }) : _{{#is_remote}}endpoint{{/is_remote}}{{^is_remote}}storage{{/is_remote}} =
            {{#is_remote}}endpoint{{/is_remote}}{{^is_remote}}storage{{/is_remote}};

  /// Injected dependency
  final {{#dependency_class}}{{dependency_class}}{{/dependency_class}}{{^dependency_class}}{{#is_remote}}{{name.pascalCase}}Endpoint{{/is_remote}}{{^is_remote}}StorageInterface<Map<String, dynamic>>{{/is_remote}}{{/dependency_class}}
      _{{#is_remote}}endpoint{{/is_remote}}{{^is_remote}}storage{{/is_remote}};

  // TODO: add implementation methods using the injected dependency.
}
