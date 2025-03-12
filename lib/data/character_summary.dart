import 'package:json_annotation/json_annotation.dart';

part 'character_summary.g.dart';

@JsonSerializable()
class CharacterSummary {
  final int id;
  final String name;
  final String image;

  CharacterSummary({required this.id, required this.name, required this.image});

  factory CharacterSummary.fromJson(Map<String, dynamic> json) =>
      _$CharacterSummaryFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterSummaryToJson(this);
}
