import 'package:dio/dio.dart';
import 'package:flutter_clean_archi_bloc/features/pokemon/data/datasources/remote/pokemon_remote_datasource.dart';
import 'package:flutter_clean_archi_bloc/features/pokemon/data/repositories/pokemon_repository_impl.dart';
import 'package:flutter_clean_archi_bloc/features/pokemon/domain/repositories/pokemon_repository.dart';
import 'package:flutter_clean_archi_bloc/features/pokemon/domain/usecases/pokemon.dart';
import 'package:flutter_clean_archi_bloc/features/pokemon/presentation/bloc/pokemon_bloc.dart';
import 'package:flutter_clean_archi_bloc/features/user/data/datasources/remote/user_remote_datasource.dart';
import 'package:flutter_clean_archi_bloc/features/user/data/repositories/user_repository_impl.dart';
import 'package:flutter_clean_archi_bloc/features/user/domain/repositories/user_repository.dart';
import 'package:flutter_clean_archi_bloc/features/user/domain/usecases/login.dart';
import 'package:flutter_clean_archi_bloc/features/user/domain/usecases/register.dart';
import 'package:flutter_clean_archi_bloc/features/user/presentation/bloc/user_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.I;

Future<void> initializeDependencies() async {
  // Dio
  sl.registerSingleton<Dio>(Dio());

  // DEPENDENTIES
  // User
  sl.registerSingleton<UserApiService>(UserApiService(sl()));
  sl.registerSingleton<UserRepository>(UserRepositoryImpl(sl()));

  // Pokemon
  sl.registerSingleton<PokemonApiService>(PokemonApiService(sl()));
  sl.registerSingleton<PokemonRepository>(PokemonRepositoryImpl(sl()));

  // USECASE
  // User
  sl.registerSingleton<LoginUseCase>(LoginUseCase(sl()));
  sl.registerSingleton<RegisterUseCase>(RegisterUseCase(sl()));

  // Pokemon
  sl.registerSingleton<PokemonUseCase>(PokemonUseCase(sl()));

  // BLOC
  // User
  sl.registerFactory<UserBloc>(() => UserBloc(sl(), sl()));

  // Pokemon
  sl.registerFactory<PokemonBloc>(() => PokemonBloc(sl()));
}
