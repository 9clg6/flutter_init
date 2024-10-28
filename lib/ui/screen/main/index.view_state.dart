import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:init/ui/abstraction/view_state.abs.dart';

///
/// [IndexScreenState]
///
@CopyWith()
class IndexScreenState extends ViewStateAbs {
  /// Loading state
  final bool? loading;

  ///
  /// Constructor
  ///
  IndexScreenState(this.loading);

  ///
  /// Initial state
  ///
  IndexScreenState.initial() : loading = true;

  ///
  /// Get props
  ///
  @override
  List<Object?> get props => <Object?>[
        loading,
      ];
}
