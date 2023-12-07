import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
      title: const Text(
        'Pokedex',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.red,
    ),
      body: const SafeArea(
        child: Center(
          child: Text("Hello Dresseur Pokémon !"),
        ),
      ),
    );
  }
}
