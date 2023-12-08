import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_archi_bloc/core/ressources/data_state.dart';
import 'package:flutter_clean_archi_bloc/features/user/domain/entities/user_entity.dart';
import 'package:flutter_clean_archi_bloc/features/user/domain/usecases/login.dart';
import 'package:flutter_clean_archi_bloc/features/user/domain/usecases/register.dart';
import 'package:flutter_clean_archi_bloc/features/user/presentation/bloc/user_event.dart';
import 'package:flutter_clean_archi_bloc/features/user/presentation/bloc/user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {

  final RegisterUseCase registerUseCase;
  final LoginUseCase loginUseCase;

  UserBloc(
    this.loginUseCase,
    this.registerUseCase,
  ) : super(const UserLoading()) {
    on<RegisterEvent>(register);
    on<LoginEvent>(login);
  }

  void register(RegisterEvent event, Emitter<UserState> emit) async {
    final data = await registerUseCase(
      params: RegisterUserRequestEntity(
        username: event.username,
        email: event.email,
        password: event.password,
      ),
    );

    if(data is DataSuccess) {
      emit(UserLoaded(register: data.data));
    }

    if(data is DataFailure) {
      emit(UserError(data.error));
    }
  }

  void login(LoginEvent event, Emitter<UserState> emit) async {
    final data = await loginUseCase(
      params: LoginUserRequestEntity(
        email: event.email,
        password: event.password,
      ),
    );

    if(data is DataSuccess) {
      emit(UserLoaded(login: data.data));
    }

    if(data is DataFailure) {
      emit(UserError(data.error));
    } 
  } 
}