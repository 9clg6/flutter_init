// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.remote.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRemoteModel _$UserRemoteModelFromJson(Map<String, dynamic> json) =>
    UserRemoteModel(
      id: (json['id'] as num?)?.toInt(),
      email: json['email'] as String?,
      nickname: json['nickname'] as String?,
      lastname: json['lastname'] as String?,
      firstname: json['firstname'] as String?,
    );

Map<String, dynamic> _$UserRemoteModelToJson(UserRemoteModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'nickname': instance.nickname,
      'lastname': instance.lastname,
      'firstname': instance.firstname,
    };
