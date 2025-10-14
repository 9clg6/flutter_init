import 'package:starter_kit/foundation/interfaces/future.usecases.dart';
import '{{repository_import}}';
{{#result_import}}
import '{{result_import}}';
{{/result_import}}{{#params_import}}
import '{{params_import}}';
{{/params_import}}

/// {{name.pascalCase}} Use Case
class {{name.pascalCase}}UseCase{{#params_type}}
    extends FutureUseCaseWithParams<{{result_type}}, {{params_type}}>{{/params_type}}{{^params_type}}
    extends FutureUseCase<{{result_type}}>{{/params_type}} {
  /// {{name.pascalCase}} Use Case constructor
  {{name.pascalCase}}UseCase({required {{repository_class}} repository})
    : _repository = repository;

  /// Repository dependency
  final {{repository_class}} _repository;

  @override
  Future<{{result_type}}> invoke({{#params_type}}{{params_type}} params{{/params_type}}) async {
{{#params_type}}
    return _repository.{{method_name}}(params);
{{/params_type}}{{^params_type}}
    return _repository.{{method_name}}();
{{/params_type}}
  }
}
