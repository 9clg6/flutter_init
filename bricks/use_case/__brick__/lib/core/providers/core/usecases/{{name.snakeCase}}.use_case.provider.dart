import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '{{repository_provider_import}}';
import '{{repository_import}}';
import 'package:starter_kit/domain/usecases/{{name.snakeCase}}.use_case.dart';

part '{{name.snakeCase}}.use_case.provider.g.dart';

/// {{name.pascalCase}} Use Case provider
@riverpod
Future<{{name.pascalCase}}UseCase> {{name.camelCase}}UseCase(Ref ref) async {
  final {{repository_class}} repository = await ref.watch(
    {{repository_provider}}.future,
  );

  return {{name.pascalCase}}UseCase(repository: repository);
}
