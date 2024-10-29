import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:kady_flutter/ui/abstraction/view_state_abs.dart';

part '{{name.snakeCase()}}.view_state.g.dart';

/// {{name.pascalCase()}} state
@CopyWith()
class {{name.pascalCase()}}State extends ViewStateAbs {

  /// loading 
  final bool loading;

  /// Initial constructor
  const {{name.pascalCase()}}State({required this.loading}) : super();

  /// Initial constructor
  {{name.pascalCase()}}State.initial() : loading = false;

  @override
  List<Object?> get props => <Object?>[loading];
}
