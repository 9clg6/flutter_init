import 'package:init/application/providers/initializer.dart';
import 'package:init/domain/service/navigation.service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kady_flutter/ui/screen/{{name.snakeCase()}}/{{name.snakeCase()}}.view_state.dart';

part '{{name.snakeCase()}}.view_model.g.dart';

///
/// [{{name.pascalCase()}}ViewModel]
///
@riverpod
class {{name.pascalCase()}}ViewModel extends _${{name.pascalCase()}}ViewModel {
  ///
  /// Constructor
  ///
  factory {{name.pascalCase()}}ViewModel() {
    return {{name.pascalCase()}}ViewModel._(
    );
  }

  ///
  /// Private constructor
  ///
  {{name.pascalCase()}}ViewModel._(){
    init();
  }

  ///
  /// Build
  ///
  @override
  {{name.pascalCase()}}State build() => {{name.pascalCase()}}State.initial();

  ///
  /// Init
  ///
  Future<void> init() async {}
}