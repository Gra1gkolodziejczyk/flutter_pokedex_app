import 'package:flutter/material.dart';
import 'package:flutter_clean_archi_bloc/features/pokemon/presentation/widgets/pokemon_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Pokedex',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const SafeArea(
        child: PokemonList(),
      ),
    );
  }
}
