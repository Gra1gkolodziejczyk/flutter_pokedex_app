// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponseEntity _$UserResponseEntityFromJson(Map<String, dynamic> json) =>
    UserResponseEntity(
      id: json['id'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$UserResponseEntityToJson(UserResponseEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'token': instance.token,
    };
