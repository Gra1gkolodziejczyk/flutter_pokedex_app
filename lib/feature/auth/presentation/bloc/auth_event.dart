import 'package:equatable/equatable.dart';
import 'package:flutter_clean_archi_bloc/feature/auth/data/models/user_request_model.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object?> get props => [];
}

class LoginEvent extends AuthenticationEvent {
  final UserRequestModel model;
  const LoginEvent({required this.model});

  @override
  List<Object?> get props => [model];
}

class RegisterEvent extends AuthenticationEvent {
  final UserRequestModel model;
  const RegisterEvent({required this.model});

  @override
  List<Object?> get props => [model];
}