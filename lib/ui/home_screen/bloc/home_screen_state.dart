part of 'home_screen_bloc.dart';

enum HomeStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == HomeStatus.initial;
  bool get isLoading => this == HomeStatus.loading;
  bool get isSuccess => this == HomeStatus.success;
  bool get isFailure => this == HomeStatus.failure;
}

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomeStatus.initial) HomeStatus status,
    @Default([]) List<CharacterSummary> characters,
    @Default(1) int currentPage,
    int? lastPage,
    @Default(false) bool hasReachedMax,
  }) = _HomeState;

  factory HomeState.fromJson(Map<String, dynamic> json) =>
      _$HomeStateFromJson(json);
}
