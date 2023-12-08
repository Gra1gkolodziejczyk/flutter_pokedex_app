import 'package:flutter_clean_archi_bloc/features/user/domain/repositories/user_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:flutter_clean_archi_bloc/features/user/data/datasources/remote/user_remote_datasource.dart';
import 'package:flutter_clean_archi_bloc/features/user/data/repositories/user_repository_impl.dart';
import 'package:flutter_clean_archi_bloc/features/user/domain/usecases/login.dart';
import 'package:flutter_clean_archi_bloc/features/user/domain/usecases/register.dart';
import 'package:flutter_clean_archi_bloc/features/user/presentation/bloc/user_bloc.dart';

final sl = GetIt.I;

Future<void> initializeDependencies() async {
  // Dio 
  sl.registerSingleton<Dio>(Dio());

  ///////////////////// DEPENDENTIES ///////////////////////////////////////
  // User
  sl.registerSingleton<UserApiService>(UserApiService(sl()));
  sl.registerSingleton<UserRepository>(UserRepositoryImpl(sl()));

  // Pokemon

  ///////////////////// USECASE ////////////////////////////////////////////
  // User
  sl.registerSingleton<LoginUseCase>(LoginUseCase(sl()));
  sl.registerSingleton<RegisterUseCase>(RegisterUseCase(sl()));

  ///////////////////// BLOC ///////////////////////////////////////////////
  // User
  sl.registerFactory<UserBloc>(() => UserBloc(sl(), sl()));
}