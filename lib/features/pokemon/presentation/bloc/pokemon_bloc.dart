import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_archi_bloc/core/ressources/data_state.dart';
import 'package:flutter_clean_archi_bloc/features/pokemon/domain/usecases/pokemon.dart';
import 'package:flutter_clean_archi_bloc/features/pokemon/presentation/bloc/pokemon_event.dart';
import 'package:flutter_clean_archi_bloc/features/pokemon/presentation/bloc/pokemon_state.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  final PokemonUseCase pokemonUseCase;

  PokemonBloc(
    this.pokemonUseCase,
  ) : super(const PokemonLoading()) {
    on<GetPokemonEvent>(getPokemon);
  }

  void getPokemon(GetPokemonEvent event, Emitter<PokemonState> emit) async {
    final data = await pokemonUseCase();

    if (data is DataSuccess) {
      emit(PokemonLoaded(getPokemons: data.data));
    }

    if (data is DataFailure) {
      emit(PokemonError(data.error));
    }
  }
}
