import 'package:json_annotation/json_annotation.dart';

import 'character_summary.dart';
import 'info_pagination_model.dart';

part 'response_pagination_model.g.dart';

@JsonSerializable()
class ResponsePaginationModel {
  final InfoPaginationModel info;
  final List<CharacterSummary> results;

  ResponsePaginationModel({required this.info, required this.results});

  factory ResponsePaginationModel.fromJson(Map<String, dynamic> json) =>
      _$ResponsePaginationModelFromJson(json);

  Map<String, dynamic> toJson() => _$ResponsePaginationModelToJson(this);
}
