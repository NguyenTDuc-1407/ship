import 'package:fooding/data/dio/dio_client.dart';
import 'package:fooding/data/reponsitories/user_reponsitories.dart';
import 'package:fooding/provider/user_provider.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;
Future<void> init() async {
  sl.registerLazySingleton<DioClient>(() => DioClient());
  sl.registerLazySingleton(() => UserProvider());
  sl.registerLazySingleton(() => UserReponsetories());
}
