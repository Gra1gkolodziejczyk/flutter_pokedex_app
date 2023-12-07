// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRequestEntity _$UserRequestEntityFromJson(Map<String, dynamic> json) =>
    UserRequestEntity(
      username: json['username'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$UserRequestEntityToJson(UserRequestEntity instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
    };
