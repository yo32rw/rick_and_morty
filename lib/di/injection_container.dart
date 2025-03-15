import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../data/service/api_service.dart';
import '../ui/home_screen/bloc/home_screen_bloc.dart';

final getIt = GetIt.instance;

Future<void> initializedDependencies() async {
  getIt.registerSingleton<Dio>(
    Dio(
      BaseOptions(
        baseUrl: 'https://rickandmortyapi.com/api',
        connectTimeout: Duration(seconds: 5),
      ),
    ),
  );

  getIt.registerSingleton<ApiService>(ApiService(dio: getIt()));

  getIt.registerFactory<HomeBloc>(() => HomeBloc(getIt()));
}
