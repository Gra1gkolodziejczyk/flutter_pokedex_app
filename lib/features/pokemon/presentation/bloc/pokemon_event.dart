abstract class PokemonEvent {
  const PokemonEvent();
}

class GetPokemonEvent extends PokemonEvent {
  final String? id;
  final String? name;
  final String? symbol;

  const GetPokemonEvent({
    this.id,
    this.name,
    this.symbol,
  });
}