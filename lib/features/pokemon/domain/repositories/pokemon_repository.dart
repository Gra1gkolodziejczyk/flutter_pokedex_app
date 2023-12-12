import 'package:flutter_clean_archi_bloc/core/ressources/data_state.dart';
import 'package:flutter_clean_archi_bloc/features/pokemon/domain/entities/pokemon_entity.dart';

abstract class PokemonRepository {
  Future<DataState<List<PokemonResponseEntity>>> getPokemons();
}