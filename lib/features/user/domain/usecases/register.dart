import 'package:flutter_clean_archi_bloc/core/ressources/data_state.dart';
import 'package:flutter_clean_archi_bloc/core/usecases/usecase.dart';
import 'package:flutter_clean_archi_bloc/features/user/domain/entities/user_entity.dart';
import 'package:flutter_clean_archi_bloc/features/user/domain/repositories/user_repository.dart';

class RegisterUseCase implements UseCase<DataState<RegisterUserResponseEntity>, RegisterUserRequestEntity> {
  final UserRepository repository;
  const RegisterUseCase(this.repository);
  
  @override
  Future<DataState<RegisterUserResponseEntity>> call({RegisterUserRequestEntity? params}) {
    return repository.register(
      body: params,
    );
  }
}