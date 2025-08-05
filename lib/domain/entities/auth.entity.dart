import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:starter_kit/data/model/local/auth.local.model.dart';
import 'package:starter_kit/data/model/remote/auth.remote.model.dart';

part 'auth.entity.g.dart';

/// Auth Entity
@CopyWith()
final class AuthEntity with EquatableMixin {
  /// Auth Entity constructor
  AuthEntity({this.token});

  /// fromLocal
  factory AuthEntity.fromLocal(AuthLocalModel authLocalModel) {
    return AuthEntity(token: authLocalModel.token);
  }

  /// fromRemote
  factory AuthEntity.fromRemote(AuthRemoteModel loginResult) {
    return AuthEntity(token: loginResult.token);
  }

  /// token
  final String? token;

  @override
  List<Object?> get props => <Object?>[token];
}
