import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part '{{name.snakeCase}}.state.g.dart';

/// {{name.pascalCase}} State
@CopyWith()
final class {{name.pascalCase}}State with EquatableMixin {
  /// Constructor
  const {{name.pascalCase}}State({required this.isLoading});

  /// Initial factory
  factory {{name.pascalCase}}State.initial() {
    return const {{name.pascalCase}}State(isLoading: false);
  }

  /// Whether async work is ongoing
  final bool isLoading;

  @override
  List<Object?> get props => <Object?>[isLoading];
}
