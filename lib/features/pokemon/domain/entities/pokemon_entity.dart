import 'package:equatable/equatable.dart';

class PokemonResponseEntity extends Equatable {
  final String? id;
  final String? url;
  final String? name;

  const PokemonResponseEntity({
    this.id,
    this.name,
    this.url,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    url,
  ];
}