// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CharacterSummary {

 int get id; String get name; String get image; bool? get isLiked;
/// Create a copy of CharacterSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterSummaryCopyWith<CharacterSummary> get copyWith => _$CharacterSummaryCopyWithImpl<CharacterSummary>(this as CharacterSummary, _$identity);

  /// Serializes this CharacterSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image,isLiked);

@override
String toString() {
  return 'CharacterSummary(id: $id, name: $name, image: $image, isLiked: $isLiked)';
}


}

/// @nodoc
abstract mixin class $CharacterSummaryCopyWith<$Res>  {
  factory $CharacterSummaryCopyWith(CharacterSummary value, $Res Function(CharacterSummary) _then) = _$CharacterSummaryCopyWithImpl;
@useResult
$Res call({
 int id, String name, String image, bool? isLiked
});




}
/// @nodoc
class _$CharacterSummaryCopyWithImpl<$Res>
    implements $CharacterSummaryCopyWith<$Res> {
  _$CharacterSummaryCopyWithImpl(this._self, this._then);

  final CharacterSummary _self;
  final $Res Function(CharacterSummary) _then;

/// Create a copy of CharacterSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? image = null,Object? isLiked = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,isLiked: freezed == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CharacterSummary implements CharacterSummary {
  const _CharacterSummary({required this.id, required this.name, required this.image, required this.isLiked});
  factory _CharacterSummary.fromJson(Map<String, dynamic> json) => _$CharacterSummaryFromJson(json);

@override final  int id;
@override final  String name;
@override final  String image;
@override final  bool? isLiked;

/// Create a copy of CharacterSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterSummaryCopyWith<_CharacterSummary> get copyWith => __$CharacterSummaryCopyWithImpl<_CharacterSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CharacterSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharacterSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image,isLiked);

@override
String toString() {
  return 'CharacterSummary(id: $id, name: $name, image: $image, isLiked: $isLiked)';
}


}

/// @nodoc
abstract mixin class _$CharacterSummaryCopyWith<$Res> implements $CharacterSummaryCopyWith<$Res> {
  factory _$CharacterSummaryCopyWith(_CharacterSummary value, $Res Function(_CharacterSummary) _then) = __$CharacterSummaryCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String image, bool? isLiked
});




}
/// @nodoc
class __$CharacterSummaryCopyWithImpl<$Res>
    implements _$CharacterSummaryCopyWith<$Res> {
  __$CharacterSummaryCopyWithImpl(this._self, this._then);

  final _CharacterSummary _self;
  final $Res Function(_CharacterSummary) _then;

/// Create a copy of CharacterSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? image = null,Object? isLiked = freezed,}) {
  return _then(_CharacterSummary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,isLiked: freezed == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
