import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'authentication.state.g.dart';

/// Authentication State
@CopyWith()
final class AuthenticationState with EquatableMixin {
  /// constructor
  AuthenticationState({required this.loading, this.isPasswordVisible = false});

  /// initial
  factory AuthenticationState.initial() {
    return AuthenticationState(loading: false);
  }

  /// loading
  final bool loading;

  /// is password visible
  final bool isPasswordVisible;

  @override
  List<Object?> get props => <Object?>[loading, isPasswordVisible];
}
