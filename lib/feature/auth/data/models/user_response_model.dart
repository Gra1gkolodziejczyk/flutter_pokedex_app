import 'package:json_annotation/json_annotation.dart';

part 'user_response_model.g.dart';

@JsonSerializable()
class UserResponseModel {
  UserResponseModel({
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

 factory UserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserResponseModelToJson(this);
}