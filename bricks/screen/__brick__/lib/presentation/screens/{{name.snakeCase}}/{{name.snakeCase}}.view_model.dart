import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/presentation/screens/{{name.snakeCase}}/{{name.snakeCase}}.state.dart';

part '{{name.snakeCase}}.view_model.g.dart';

/// {{name.pascalCase}} View Model
@riverpod
class {{name.pascalCase}}ViewModel extends _${{name.pascalCase}}ViewModel {
  @override
  Future<{{name.pascalCase}}State> build() async {
    return {{name.pascalCase}}State.initial();
  }

  /// Example action to demonstrate state updates
  Future<void> toggleLoading() async {
    final {{name.pascalCase}}State current =
        state.value ?? await future;

    state = AsyncValue<{{name.pascalCase}}State>.data(
      current.copyWith(isLoading: !current.isLoading),
    );
  }
}
