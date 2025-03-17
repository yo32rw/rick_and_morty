import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_summary.freezed.dart';
part 'character_summary.g.dart';

@freezed
abstract class CharacterSummary with _$CharacterSummary {
  const factory CharacterSummary({
    required int id,
    required String name,
    required String image,
    required bool? isLiked,
  }) = _CharacterSummary;

  factory CharacterSummary.fromJson(Map<String, dynamic> json) =>
      _$CharacterSummaryFromJson(json);
}
