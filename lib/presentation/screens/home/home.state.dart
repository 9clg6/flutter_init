import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'home.state.g.dart';

/// Home state
@CopyWith()
class HomeState with EquatableMixin {
  /// Constructor
  HomeState({required this.isLoading});

  /// Initial Constructor
  HomeState.initial({this.isLoading = true});

  /// Whether the home screen is loading
  final bool isLoading;

  @override
  List<Object?> get props => <Object?>[isLoading];
}
