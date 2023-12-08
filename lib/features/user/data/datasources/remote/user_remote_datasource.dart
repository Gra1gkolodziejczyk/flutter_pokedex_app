import 'package:flutter_clean_archi_bloc/features/user/data/models/user_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_clean_archi_bloc/core/constants/constants.dart';
import 'package:dio/dio.dart';

part 'user_remote_datasource.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class UserApiService {
  factory UserApiService(Dio dio) = _UserApiService;

  @POST("/users/auth/login")
  Future<HttpResponse<LoginUserResponseModel>> login({
    @Body() LoginUserRequestModel? body,
    @Header('Content-Type') String? contentType,
    @Header('Accept') String? accept,
  });

  @POST("/users/auth/register")
  Future<HttpResponse<RegisterUserResponseModel>> register({
    @Body() RegisterUserRequestModel? body,
    @Header('Content-Type') String? contentType,
    @Header('Accept') String? accept,
  });
}