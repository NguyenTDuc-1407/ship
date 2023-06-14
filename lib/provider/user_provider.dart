
import 'package:fooding/data/models/model_users.dart';
import 'package:fooding/data/reponsitories/user_reponsitories.dart';
import 'package:fooding/provider/base/api_response.dart';
import 'package:get_it/get_it.dart';

class UserProvider {
  UserReponsetories? userReponsetories = GetIt.I.get<UserReponsetories>();

  Future<void> AllUser({
    required Function(List<modelUsers> posts) onSuccess,
    required Function(dynamic error) onError,
  }) async {
    final ApiResponse apiResponse = await userReponsetories!.user();
    if (apiResponse.response.statusCode == null) {
      onError(apiResponse.error);
    }
    if (apiResponse.response.statusCode! >= 200 &&
        apiResponse.response.statusCode! <= 300) {
      // call back data success
      final results = apiResponse.response.data as List<dynamic>;
      onSuccess(results.map((e) => modelUsers.fromMap(e)).toList());
    } else {
      onError(apiResponse.error);
    }
  }
}
