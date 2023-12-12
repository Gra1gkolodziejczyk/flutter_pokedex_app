abstract class PokemonEvent {
  const PokemonEvent();
}

class GetPokemonEvent extends PokemonEvent {
  final double? id;
  final String? num;
  final String? name;
  final String? img;

  const GetPokemonEvent({
    this.id,
    this.num,
    this.name,
    this.img,
  });
}