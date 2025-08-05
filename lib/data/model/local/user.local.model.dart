import 'package:json_annotation/json_annotation.dart';

part 'user.local.model.g.dart';

/// User Local Model
@JsonSerializable()
final class UserLocalModel {
  /// User Local Model constructor
  UserLocalModel({
    this.id,
    this.email,
    this.nickname,
    this.lastname,
    this.firstname,
  });

  /// fromJson
  factory UserLocalModel.fromJson(Map<String, dynamic> json) =>
      _$UserLocalModelFromJson(json);

  /// toJson
  Map<String, dynamic> toJson() => _$UserLocalModelToJson(this);

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
