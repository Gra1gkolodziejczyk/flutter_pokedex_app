import 'package:flutter_clean_archi_bloc/features/pokemon/domain/entities/pokemon_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pokemon_model.g.dart';

@JsonSerializable()
class PokemonResponseModel extends PokemonResponseEntity {
  final String? id;
  final String? name;
  final String? url;

  const PokemonResponseModel({
    this.id,
    this.name,
    this.url,
  }) : super(
          id: id,
          name: name,
          url: url,
        );

  factory PokemonResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonResponseModelToJson(this);

  factory PokemonResponseModel.fromEntity(PokemonResponseEntity entity) {
    return PokemonResponseModel(
      id: entity.id,
      name: entity.name,
      url: entity.url,
    );
  }
}
