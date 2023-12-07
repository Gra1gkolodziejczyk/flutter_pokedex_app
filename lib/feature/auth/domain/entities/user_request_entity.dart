import 'package:json_annotation/json_annotation.dart';

part 'user_request_entity.g.dart';

@JsonSerializable()
class UserRequestEntity {
  UserRequestEntity({
    this.username,
    this.email,
    this.password,
  });

  String? username;
  String? email;
  String? password;

  factory UserRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$UserRequestEntityFromJson(json);
  Map<String, dynamic> toJson() => _$UserRequestEntityToJson(this);
}