import 'package:json_annotation/json_annotation.dart';

part 'user_response_entity.g.dart';

@JsonSerializable()
class UserResponseEntity {
  UserResponseEntity({
    this.id,
    this.username,
    this.email,
    this.password,
    this.token,
  });

  String? id;
  String? username;
  String? email;
  String? password;
  String? token;

  factory UserResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$UserResponseEntityFromJson(json);
  Map<String, dynamic> toJson() => _$UserResponseEntityToJson(this);
}