import 'package:equatable/equatable.dart';

class LoginUserRequestEntity extends Equatable {
  final String? email;
  final String? password;

  const LoginUserRequestEntity({
    this.email,
    this.password,
  });

  @override
  List<Object?> get props => [
    email,
    password,
  ];
}

class LoginUserResponseEntity extends Equatable {
  final String? id;
  final String? username;
  final String? email;
  final String? password;
  final String? access_token;

  const LoginUserResponseEntity({
    this.id,
    this.username,
    this.email,
    this.password,
    this.access_token,
  });

  @override
  List<Object?> get props => [
    id,
    username,
    email,
    password,
    access_token,
  ];
}

class RegisterUserRequestEntity extends Equatable {
  final String? username;
  final String? email;
  final String? password;

  const RegisterUserRequestEntity({
    this.username,
    this.email,
    this.password,
  });

  @override
  List<Object?> get props => [
    username,
    email,
    password,
  ];
}

class RegisterUserResponseEntity extends Equatable {
  final String? username;
  final String? email;
  final String? password;

  const RegisterUserResponseEntity({
    this.username,
    this.email,
    this.password,
  });

  @override
  List<Object?> get props => [
    username,
    email,
    password,
  ];
}