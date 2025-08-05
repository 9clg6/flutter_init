import 'package:json_annotation/json_annotation.dart';

part 'login.param.g.dart';

/// Login Param
@JsonSerializable(fieldRename: FieldRename.snake)
final class LoginParam {
  /// Login Param constructor
  LoginParam({required this.username, required this.password});

  /// username
  final String username;

  /// password
  final String password;
}
