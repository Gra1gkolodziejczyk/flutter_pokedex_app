import 'package:dio/dio.dart';
import 'package:flutter_clean_archi_bloc/features/user/domain/entities/user_entity.dart';

abstract class UserState {
  final LoginUserResponseEntity? login;
  final RegisterUserResponseEntity? register;
  final DioException? error;

  const UserState({
    this.error,
    this.login,
    this.register,
  });
}

class UserLoading extends UserState {
  const UserLoading();
}

class UserLoaded extends UserState {
  const UserLoaded({LoginUserResponseEntity? login, RegisterUserResponseEntity? register}) : super(login: login, register: register);
}

class UserError extends UserState {
  const UserError(DioException? error) : super(error: error);
}