import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_archi_bloc/features/pokemon/presentation/bloc/pokemon_bloc.dart';
import 'package:flutter_clean_archi_bloc/features/pokemon/presentation/bloc/pokemon_event.dart';
import 'package:flutter_clean_archi_bloc/features/pokemon/presentation/bloc/pokemon_state.dart';
import 'package:flutter_clean_archi_bloc/injection_container.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({super.key});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late PokemonBloc pokemonBloc;

  @override
  void initState() {
    super.initState();
    pokemonBloc = sl<PokemonBloc>();
    pokemonBloc.add(const GetPokemonEvent());
  }

  @override
  void dispose() {
    super.dispose();
    pokemonBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonBloc, PokemonState>(
      bloc: pokemonBloc,
      builder: (context, state) {
        if (state is PokemonLoaded) {
          return CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.all(5),
                sliver: SliverGrid.builder(
                    itemCount: state.getPokemons?.length ?? 0,
                    addAutomaticKeepAlives: false,
                    addRepaintBoundaries: false,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 30,
                      crossAxisSpacing: 3,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              state.getPokemons?[index].url ?? '',
                              width: MediaQuery.of(context).size.width,
                              height: 170,
                            ),
                            Text(
                              state.getPokemons?[index].name ?? 'Aucun nom',
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          );
        } else if (state is PokemonLoading) {
          return const Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.black,
              color: Colors.red,
            ),
          );
        } else {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Erreur lors du chargement des données',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'des Pokemons',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
