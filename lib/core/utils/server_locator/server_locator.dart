

import 'package:bookely/core/utils/api_server/api_server.dart';
import 'package:bookely/feature/home/data/repo/home_imple.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt=GetIt.instance;

void setupServiceloactor()
{
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    getIt.get<ApiService>(),
  ));
}