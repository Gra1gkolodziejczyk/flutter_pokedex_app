import 'package:flutter_clean_archi_bloc/core/ressources/data_state.dart';
import 'package:flutter_clean_archi_bloc/features/user/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<DataState<LoginUserResponseEntity>> login({
    LoginUserRequestEntity? body,
  });

  Future<DataState<RegisterUserResponseEntity>> register({
    RegisterUserRequestEntity? body,
  });
}