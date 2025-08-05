import 'package:json_annotation/json_annotation.dart';

part 'user.remote.model.g.dart';

/// User Remote Model
@JsonSerializable()
final class UserRemoteModel {
  /// User Remote Model constructor
  UserRemoteModel({
    this.id,
    this.email,
    this.nickname,
    this.lastname,
    this.firstname,
  });

  /// fromJson
  factory UserRemoteModel.fromJson(Map<String, dynamic> json) =>
      _$UserRemoteModelFromJson(json);

  /// toJson

  /// id
  final int? id;

  /// email
  final String? email;

  /// nickname
  final String? nickname;

  /// lastname
  final String? lastname;

  /// firstname
  final String? firstname;
}
