import 'package:equatable/equatable.dart';

class PokemonResponseEntity extends Equatable {
  final double? id;
  final String? num;
  final String? name;
  final String? img;

  const PokemonResponseEntity({
    this.id,
    this.num,
    this.name,
    this.img,
  });

  @override
  List<Object?> get props => [
    id,
    num,
    name,
    img,
  ];
}