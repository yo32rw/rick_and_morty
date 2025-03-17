part of 'detail_bloc.dart';

enum DetailStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == DetailStatus.initial;
  bool get isLoading => this == DetailStatus.loading;
  bool get isSuccess => this == DetailStatus.success;
  bool get isFailure => this == DetailStatus.failure;
}

@freezed
abstract class DetailState with _$DetailState {
  const factory DetailState({
    @Default(DetailStatus.initial) DetailStatus status,
    Character? character,
  }) = _DetailState;

  factory DetailState.fromJson(Map<String, dynamic> json) =>
      _$DetailStateFromJson(json);
}
