import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:starter_kit/data/model/local/user.local.model.dart';
import 'package:starter_kit/data/model/remote/user.remote.model.dart';

part 'user.entity.g.dart';

/// User Entity
@CopyWith()
class UserEntity with EquatableMixin {
  /// User Entity constructor
  UserEntity({
    this.id,
    this.email,
    this.nickname,
    this.lastname,
    this.firstname,
  });

  /// fromLocal
  factory UserEntity.fromLocal(UserLocalModel userLocalModel) {
    return UserEntity(
      id: userLocalModel.id,
      email: userLocalModel.email,
      nickname: userLocalModel.nickname,
      lastname: userLocalModel.lastname,
      firstname: userLocalModel.firstname,
    );
  }

  /// fromRemote
  factory UserEntity.fromRemote(UserRemoteModel userRemoteModel) {
    return UserEntity(
      id: userRemoteModel.id,
      email: userRemoteModel.email,
      nickname: userRemoteModel.nickname,
      lastname: userRemoteModel.lastname,
      firstname: userRemoteModel.firstname,
    );
  }

  /// id
  final int? id;

  /// email
  final String? email;

  /// username
  final String? nickname;

  /// lastname
  final String? lastname;

  /// firstname
  final String? firstname;

  @override
  String toString() {
    return 'User: $id - $email - $nickname - $lastname - $firstname';
  }

  @override
  List<Object?> get props => <Object?>[
        id,
        email,
        nickname,
        lastname,
        firstname,
      ];
}
