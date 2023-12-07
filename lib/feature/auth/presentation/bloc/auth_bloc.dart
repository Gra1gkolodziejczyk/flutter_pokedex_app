import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_archi_bloc/feature/auth/data/repository/user_repository.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository userRepository;

  AuthenticationBloc({required this.userRepository}) : super(AuthInitialState());

  @override
  Stream<AuthenticationState> mapEventToState(AuthenticationEvent event) async* {
    if (event is LoginEvent) {
      yield AuthLoadingState();
      try {
        final user = await userRepository.login(event.model);
        if (user != null) {
          yield AuthAuthenticatedState(user: user);
        } else {
          yield AuthErrorState(error: 'Login failed');
        }
      } catch (e) {
        yield AuthErrorState(error: 'An error occurred during login');
      }
    } else if (event is RegisterEvent) {
      yield AuthLoadingState();
      try {
        final user = await userRepository.register(event.model);
        if (user != null) {
          yield AuthAuthenticatedState(user: user);
        } else {
          yield AuthErrorState(error: 'Registration failed');
        }
      } catch (e) {
        yield AuthErrorState(error: 'An error occurred during registration');
      }
    }
  }
}