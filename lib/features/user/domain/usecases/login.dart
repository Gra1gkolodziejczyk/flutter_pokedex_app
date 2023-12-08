import 'package:flutter_clean_archi_bloc/core/ressources/data_state.dart';
import 'package:flutter_clean_archi_bloc/core/usecases/usecase.dart';
import 'package:flutter_clean_archi_bloc/features/user/domain/entities/user_entity.dart';
import 'package:flutter_clean_archi_bloc/features/user/domain/repositories/user_repository.dart';

class LoginUseCase implements UseCase<DataState<LoginUserResponseEntity>, LoginUserRequestEntity> {
  final UserRepository repository;
  const LoginUseCase(this.repository);
  
  @override
  Future<DataState<LoginUserResponseEntity>> call({LoginUserRequestEntity? params}) {
    return repository.login(
      body: params,
    );
  }
}