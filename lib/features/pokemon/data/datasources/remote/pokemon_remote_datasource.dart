import 'package:dio/dio.dart';
import 'package:flutter_clean_archi_bloc/core/constants/constants.dart';
import 'package:flutter_clean_archi_bloc/features/pokemon/data/models/pokemon_model.dart';
import 'package:retrofit/retrofit.dart';

part 'pokemon_remote_datasource.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class PokemonApiService {
  factory PokemonApiService(Dio dio) = _PokemonApiService;

  @GET('/pokemons')
  Future<HttpResponse<List<PokemonResponseModel>>> getPokemons({
    @Header('Accept') String? accept,
  });
}
