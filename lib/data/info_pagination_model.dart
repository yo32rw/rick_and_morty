import 'package:json_annotation/json_annotation.dart';

part 'info_pagination_model.g.dart';

@JsonSerializable()
class InfoPaginationModel {
  final int count, pages;
  final String? next, prev;

  InfoPaginationModel({
    required this.count,
    required this.pages,
    required this.next,
    required this.prev,
  });

  factory InfoPaginationModel.fromJson(Map<String, dynamic> json) =>
      _$InfoPaginationModelFromJson(json);

  Map<String, dynamic> toJson() => _$InfoPaginationModelToJson(this);
}
