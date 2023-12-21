import 'package:dio/dio.dart';
import 'package:flutter_clean_archi_bloc/core/ressources/data_state.dart';
import 'package:flutter_clean_archi_bloc/features/pokemon/data/datasources/remote/pokemon_remote_datasource.dart';
import 'package:flutter_clean_archi_bloc/features/pokemon/data/models/pokemon_model.dart';
import 'package:flutter_clean_archi_bloc/features/pokemon/domain/repositories/pokemon_repository.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonApiService apiService;
  const PokemonRepositoryImpl(this.apiService);

  @override
  Future<DataState<List<PokemonResponseModel>>> getPokemons() async {
    try {
      final response = await apiService.getPokemons(
        accept: "application/json",
      );
      if (response.response.statusCode == 200) {
        return DataSuccess(response.data);
      } else {
        return DataFailure(
          DioException(
            requestOptions: response.response.requestOptions,
            error: response.response.statusMessage,
            response: response.response,
            type: DioExceptionType.badResponse,
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailure(e);
    }
  }
}
