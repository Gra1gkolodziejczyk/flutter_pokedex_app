import 'package:equatable/equatable.dart';
import 'package:flutter_clean_archi_bloc/feature/auth/data/models/user_response_model.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object?> get props => [];
}

class AuthInitialState extends AuthenticationState {}

class AuthLoadingState extends AuthenticationState {}

class AuthAuthenticatedState extends AuthenticationState {
  final UserResponseModel user;

  const AuthAuthenticatedState({required this.user});

  @override
  List<Object?> get props => [user];
}

class AuthErrorState extends AuthenticationState {
  final String error;

  AuthErrorState({required this.error});

  @override
  List<Object?> get props => [error];
}