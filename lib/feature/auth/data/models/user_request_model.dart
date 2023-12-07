import 'package:json_annotation/json_annotation.dart';

part 'user_request_model.g.dart';

@JsonSerializable()
class UserRequestModel {
  UserRequestModel({
    this.username,
    this.email,
    this.password,
  });

  String? username;
  String? email;
  String? password;

  factory UserRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UserRequestModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserRequestModelToJson(this);
}