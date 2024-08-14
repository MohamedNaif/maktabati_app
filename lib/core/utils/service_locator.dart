import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:maktabati_app/core/utils/api_service.dart';
import 'package:maktabati_app/features/home/data/repos/home_repo_impl.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
}
