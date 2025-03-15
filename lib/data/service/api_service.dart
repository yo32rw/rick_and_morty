// import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:rick_and_morty/data/character_summary.dart';
import 'package:rick_and_morty/data/response_pagination_model.dart';

class ApiService {
  final Dio dio;

  ApiService({required this.dio});

  Future<List<CharacterSummary>> getCharactersList({required int page}) async {
    try {
      final response = await dio.get(
        '/character',
        queryParameters: {'page': page},
      );
      final ResponsePaginationModel responsePaginationModel =
          ResponsePaginationModel.fromJson(response.data);
      return responsePaginationModel.results;
    } on Exception {
      rethrow;
    }
  }
}
