// ignore_for_file: one_member_abstracts fck linter

import 'package:starter_kit/domain/entities/user.entity.dart';

/// User Repository
abstract class UserRepository {
  /// get user
  Future<UserEntity> getUser();
}
