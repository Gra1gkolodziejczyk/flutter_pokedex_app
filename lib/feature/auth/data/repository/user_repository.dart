import 'package:dio/dio.dart';
import 'package:flutter_clean_archi_bloc/feature/auth/data/models/user_request_model.dart';
import 'package:flutter_clean_archi_bloc/feature/auth/data/models/user_response_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class UserRepository {
  final Dio dio;
  final String apiUrl;

  UserRepository() : dio = Dio(), apiUrl = dotenv.env['API_URL'] ?? '';

Future<UserResponseModel?> login(UserRequestModel model) async {
    final loginUrl = '$apiUrl/users/auth/login';
    final response = await dio.post(loginUrl, data: model.toJson());
    if (response.statusCode == 201) {
      return UserResponseModel.fromJson(response.data);
    } else {
      throw Exception('Error login');
    }
  }

  Future<UserResponseModel?> register(UserRequestModel model) async {
    final registerUrl = '$apiUrl/users/auth/register';
    final response = await dio.post(registerUrl, data: model.toJson());
    if (response.statusCode == 201) {
      return UserResponseModel.fromJson(response.data);
    } else {
      throw Exception('Error register');
    }
  }
}