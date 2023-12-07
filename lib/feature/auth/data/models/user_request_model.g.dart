// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRequestModel _$UserRequestModelFromJson(Map<String, dynamic> json) =>
    UserRequestModel(
      username: json['username'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$UserRequestModelToJson(UserRequestModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
    };
