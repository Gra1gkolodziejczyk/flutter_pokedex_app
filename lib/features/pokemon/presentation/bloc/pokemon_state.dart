import 'package:dio/dio.dart';
import 'package:flutter_clean_archi_bloc/features/pokemon/domain/entities/pokemon_entity.dart';

abstract class PokemonState {
  final List<PokemonResponseEntity>? getPokemon;
  final DioException? error;

  const PokemonState({
    this.getPokemon,
    this.error,
  });
}

class PokemonLoading extends PokemonState {
 const PokemonLoading();
}

class PokemonLoaded extends PokemonState {
  const PokemonLoaded({List<PokemonResponseEntity>? getPokemon}) : super(getPokemon: getPokemon);
}

class PokemonError extends PokemonState {
  const PokemonError(DioException? error) : super(error: error);
}