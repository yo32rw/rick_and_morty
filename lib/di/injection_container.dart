import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:rick_and_morty/data/service/local_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/service/api_service.dart';
import '../ui/home_screen/bloc/home_screen_bloc.dart';

final sl = GetIt.instance;

Future<void> initializedDependencies() async {
  sl.registerSingletonAsync<SharedPreferences>(SharedPreferences.getInstance);

  sl.registerSingletonWithDependencies<LocalStorage>(
    () => LocalStorage(sl()),
    dependsOn: [SharedPreferences],
  );

  sl.registerSingleton<Dio>(
    Dio(
      BaseOptions(
        baseUrl: 'https://rickandmortyapi.com/api',
        connectTimeout: Duration(seconds: 5),
      ),
    ),
  );

  sl.registerSingleton<ApiService>(ApiService(dio: sl()));

  sl.registerFactory<HomeBloc>(
    () => HomeBloc(apiService: sl(), localStorage: sl()),
  );
}
