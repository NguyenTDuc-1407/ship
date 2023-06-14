import 'package:fooding/data/dio/dio_client.dart';
import 'package:fooding/data/models/model_users.dart';
import 'package:fooding/provider/base/api_response.dart';
import 'package:get_it/get_it.dart';

class UserReponsetories {
  DioClient? dioClient = GetIt.I.get<DioClient>();

  Future<ApiResponse> user() async {
    try {
      final response = await dioClient!.get('posts');
      return ApiResponse.withSuccess(response);
    } catch (e) {
      return ApiResponse.withError('loi');
    }
  }
}
