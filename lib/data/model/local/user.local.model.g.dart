// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.local.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLocalModel _$UserLocalModelFromJson(Map<String, dynamic> json) =>
    UserLocalModel(
      id: (json['id'] as num?)?.toInt(),
      email: json['email'] as String?,
      nickname: json['nickname'] as String?,
      lastname: json['lastname'] as String?,
      firstname: json['firstname'] as String?,
    );

Map<String, dynamic> _$UserLocalModelToJson(UserLocalModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'nickname': instance.nickname,
      'lastname': instance.lastname,
      'firstname': instance.firstname,
    };
