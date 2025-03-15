part of 'home_screen_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetched() = _Fetched;
  const factory HomeEvent.changeLike({
    @Default(false) bool isLiked,
    @Default(0) int id,
  }) = _ChangeLike;
}
