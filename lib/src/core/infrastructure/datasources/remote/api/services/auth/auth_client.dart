import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../../../modules/auth/infrastructure/models/user_model.dart';
import '../../base/api_response.dart';
import 'models/login_request.dart';
import 'models/login_response.dart';

part 'auth_client.g.dart';

@RestApi()
@injectable
abstract class AuthClient {
  @factoryMethod
  factory AuthClient(Dio dio) = _AuthClient;

  // @GET('/register')
  // Future<SingleApiResponse<LoginResponse>> register(
  //   @Body() LoginRequest request,
  //   @CancelRequest() CancelToken? cancelToken,
  // );

  @POST('/login')
  Future<SingleApiResponse<LoginResponse>> login(
    @Queries() LoginRequest request,
    @CancelRequest() CancelToken? cancelToken,
  );

  @GET('/user')
  Future<ListApiResponse<UserModel>> users(
      @CancelRequest() CancelToken? cancelToken);

  @GET('/user/{id}')
  Future<SingleApiResponse<UserModel>> user(
    @Path('id') String id,
    @CancelRequest() CancelToken? cancelToken,
  );
}
