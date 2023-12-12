import 'package:flutter_clean_archi_bloc/core/ressources/data_state.dart';
import 'package:flutter_clean_archi_bloc/core/usecases/usecase.dart';
import 'package:flutter_clean_archi_bloc/features/pokemon/domain/entities/pokemon_entity.dart';
import 'package:flutter_clean_archi_bloc/features/pokemon/domain/repositories/pokemon_repository.dart';

class PokemonUseCase implements UseCase<DataState<List<PokemonResponseEntity>>, void> {
  final PokemonRepository repository;
  const PokemonUseCase(this.repository);
  
  @override
  Future<DataState<List<PokemonResponseEntity>>> call({void params}) {
    return repository.getPokemons();
  }
}