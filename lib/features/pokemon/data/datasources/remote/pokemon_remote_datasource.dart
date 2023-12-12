import 'package:flutter_clean_archi_bloc/features/pokemon/data/models/pokemon_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_clean_archi_bloc/core/constants/constants.dart';
import 'package:dio/dio.dart';

part 'pokemon_remote_datasource.g.dart';

@RestApi(baseUrl: pokemonApi)
abstract class PokemonApiService {
  factory PokemonApiService(Dio dio) = _PokemonApiService;

  @GET("https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json")
  Future<HttpResponse<List<PokemonResponseModel>>> getPokemon();
}