// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// @nodoc


class _Fetched implements HomeEvent {
  const _Fetched();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetched);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.fetched()';
}


}




/// @nodoc


class _ChangeLike implements HomeEvent {
  const _ChangeLike({this.isLiked = false, this.id = 0});
  

@JsonKey() final  bool isLiked;
@JsonKey() final  int id;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeLikeCopyWith<_ChangeLike> get copyWith => __$ChangeLikeCopyWithImpl<_ChangeLike>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeLike&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,isLiked,id);

@override
String toString() {
  return 'HomeEvent.changeLike(isLiked: $isLiked, id: $id)';
}


}

/// @nodoc
abstract mixin class _$ChangeLikeCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$ChangeLikeCopyWith(_ChangeLike value, $Res Function(_ChangeLike) _then) = __$ChangeLikeCopyWithImpl;
@useResult
$Res call({
 bool isLiked, int id
});




}
/// @nodoc
class __$ChangeLikeCopyWithImpl<$Res>
    implements _$ChangeLikeCopyWith<$Res> {
  __$ChangeLikeCopyWithImpl(this._self, this._then);

  final _ChangeLike _self;
  final $Res Function(_ChangeLike) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isLiked = null,Object? id = null,}) {
  return _then(_ChangeLike(
isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$HomeState {

 HomeStatus get status; List<CharacterSummary> get characters; int get currentPage; int? get lastPage; bool get hasReachedMax;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);

  /// Serializes this HomeState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.characters, characters)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(characters),currentPage,lastPage,hasReachedMax);

@override
String toString() {
  return 'HomeState(status: $status, characters: $characters, currentPage: $currentPage, lastPage: $lastPage, hasReachedMax: $hasReachedMax)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 HomeStatus status, List<CharacterSummary> characters, int currentPage, int? lastPage, bool hasReachedMax
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? characters = null,Object? currentPage = null,Object? lastPage = freezed,Object? hasReachedMax = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HomeStatus,characters: null == characters ? _self.characters : characters // ignore: cast_nullable_to_non_nullable
as List<CharacterSummary>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int?,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _HomeState implements HomeState {
  const _HomeState({this.status = HomeStatus.initial, final  List<CharacterSummary> characters = const [], this.currentPage = 1, this.lastPage, this.hasReachedMax = false}): _characters = characters;
  factory _HomeState.fromJson(Map<String, dynamic> json) => _$HomeStateFromJson(json);

@override@JsonKey() final  HomeStatus status;
 final  List<CharacterSummary> _characters;
@override@JsonKey() List<CharacterSummary> get characters {
  if (_characters is EqualUnmodifiableListView) return _characters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_characters);
}

@override@JsonKey() final  int currentPage;
@override final  int? lastPage;
@override@JsonKey() final  bool hasReachedMax;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._characters, _characters)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_characters),currentPage,lastPage,hasReachedMax);

@override
String toString() {
  return 'HomeState(status: $status, characters: $characters, currentPage: $currentPage, lastPage: $lastPage, hasReachedMax: $hasReachedMax)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 HomeStatus status, List<CharacterSummary> characters, int currentPage, int? lastPage, bool hasReachedMax
});




}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? characters = null,Object? currentPage = null,Object? lastPage = freezed,Object? hasReachedMax = null,}) {
  return _then(_HomeState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HomeStatus,characters: null == characters ? _self._characters : characters // ignore: cast_nullable_to_non_nullable
as List<CharacterSummary>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int?,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
