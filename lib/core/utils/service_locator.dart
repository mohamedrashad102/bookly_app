import 'package:bookly_app/features/data/repos/home_repo.dart';
import 'package:bookly_app/features/data/repos/home_repo_impl.dart';
import 'package:bookly_app/services/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<ApiService>(ApiService(getIt.get<Dio>()));
  getIt.registerSingleton<HomeRepo>(HomeRepoImpl(getIt<ApiService>()));
}
