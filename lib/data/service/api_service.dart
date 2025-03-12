// import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:rick_and_morty/data/character_summary.dart';
import 'package:rick_and_morty/data/response_pagination_model.dart';

class ApiService {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://rickandmortyapi.com/api',
      connectTimeout: Duration(seconds: 5),
    ),
  );

  Future<List<CharacterSummary>> getCharactersList() async {
    try {
      final response = await dio.get('/character');
      final ResponsePaginationModel responsePaginationModel =
          ResponsePaginationModel.fromJson(response.data);
      return responsePaginationModel.results;
    } on Exception {
      rethrow;
    }
  }
}
