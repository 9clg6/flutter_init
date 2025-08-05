import 'package:json_annotation/json_annotation.dart';
import 'package:starter_kit/domain/params/login.param.dart';

part 'login.param.g.dart';

/// Login Param
@JsonSerializable(fieldRename: FieldRename.snake)
final class LoginBody {
  /// Login Param constructor
  LoginBody({required this.username, required this.password});

  /// fromUseCaseParams
  factory LoginBody.fromUseCaseParams(LoginParam params) {
    return LoginBody(username: params.username, password: params.password);
  }

  /// email
  final String username;

  /// password
  final String password;

  /// fromJson
  static LoginBody fromJson(Map<String, dynamic> json) =>
      _$LoginBodyFromJson(json);

  /// toJson
  Map<String, dynamic> toJson() => _$LoginBodyToJson(this);
}
