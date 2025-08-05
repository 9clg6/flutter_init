import 'package:json_annotation/json_annotation.dart';
import 'package:starter_kit/domain/entities/auth.entity.dart';

part 'auth.local.model.g.dart';

/// Auth Remote Model
@JsonSerializable(fieldRename: FieldRename.snake)
final class AuthLocalModel {
  /// Auth Remote Model constructor
  AuthLocalModel({this.token});

  /// fromEntity
  factory AuthLocalModel.fromEntity(AuthEntity params) {
    return AuthLocalModel(token: params.token);
  }

  /// fromJson
  factory AuthLocalModel.fromJson(Map<String, dynamic> json) =>
      _$AuthLocalModelFromJson(json);

  /// token
  final String? token;

  /// toJson
  Map<String, dynamic> toJson() => _$AuthLocalModelToJson(this);
}
