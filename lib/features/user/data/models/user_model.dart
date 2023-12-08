import 'package:flutter_clean_archi_bloc/features/user/domain/entities/user_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class LoginUserRequestModel extends LoginUserRequestEntity {
  final String? email;
  final String? password;

  const LoginUserRequestModel({
    this.email,
    this.password,
}): super(
    email: email,
    password: password,
  );

  factory LoginUserRequestModel.fromJson(Map<String, dynamic> json) =>
    _$LoginUserRequestModelFromJson(json);
  Map<String, dynamic> toJson() => _$LoginUserRequestModelToJson(this);

  factory LoginUserRequestModel.fromEntity(LoginUserRequestEntity entity) {
    return LoginUserRequestModel(
      email: entity.email,
      password: entity.password,
    );
  }
}

@JsonSerializable()
class LoginUserResponseModel extends LoginUserResponseEntity {

  final String? id;
  final String? username;
  final String? email;
  final String? password;
  final String? token;

  const LoginUserResponseModel({
    this.id,
    this.username,
    this.email,
    this.password,
    this.token,
}): super(
    id: id,
    email: email,
    username: username,
    password: password,
    token: token,
  );

  factory LoginUserResponseModel.fromJson(Map<String, dynamic> json) =>
    _$LoginUserResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$LoginUserResponseModelToJson(this);

  factory LoginUserResponseModel.fromEntity(LoginUserResponseEntity entity) {
    return LoginUserResponseModel(
      id: entity.id,
      username: entity.username,
      email: entity.email,
      password: entity.password,
      token: entity.token,
    );
  }
}

@JsonSerializable()
class RegisterUserRequestModel extends RegisterUserRequestEntity {

  final String? username;
  final String? email;
  final String? password;
  
  
  const RegisterUserRequestModel({
    this.username,
    this.email,
    this.password,
  }): super(
  username: username,
  email: email,
  password: password,
  );

  factory RegisterUserRequestModel.fromJson(Map<String, dynamic> json) =>
    _$RegisterUserRequestModelFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterUserRequestModelToJson(this);

  factory RegisterUserRequestModel.fromEntity(RegisterUserRequestEntity entity) {
    return RegisterUserRequestModel(
      username: entity.username,
      email: entity.email,
      password: entity.password,
    );
  }
}

@JsonSerializable()
class RegisterUserResponseModel extends RegisterUserResponseEntity {

  final  String? id;
  final String? username;
  final String? email;
  final String? password;
  final String? token;


  const RegisterUserResponseModel({
    this.id,
    this.username,
    this.email,
    this.password,
    this.token,
}) : super(
  id: id,
  email: email,
  username: username,
  password: password,
  token: token,
  );

    factory RegisterUserResponseModel.fromJson(Map<String, dynamic> json) =>
    _$RegisterUserResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterUserResponseModelToJson(this);

  factory RegisterUserResponseModel.fromEntity(RegisterUserResponseEntity entity) {
    return RegisterUserResponseModel(
      id: entity.id,
      username: entity.username,
      email: entity.email,
      password: entity.password,
      token: entity.token,
    );
  }
}