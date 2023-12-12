// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonResponseModel _$PokemonResponseModelFromJson(
        Map<String, dynamic> json) =>
    PokemonResponseModel(
      id: (json['id'] as num?)?.toDouble(),
      num: json['num'] as String?,
      name: json['name'] as String?,
      img: json['img'] as String?,
    );

Map<String, dynamic> _$PokemonResponseModelToJson(
        PokemonResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'num': instance.num,
      'name': instance.name,
      'img': instance.img,
    };
