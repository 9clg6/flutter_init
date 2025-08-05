// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthRemoteModel _$AuthRemoteModelFromJson(Map<String, dynamic> json) =>
    AuthRemoteModel(
      tokenType: json['token_type'] as String,
      expiresIn: (json['expires_in'] as num).toInt(),
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$AuthRemoteModelToJson(AuthRemoteModel instance) =>
    <String, dynamic>{
      'token_type': instance.tokenType,
      'expires_in': instance.expiresIn,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
