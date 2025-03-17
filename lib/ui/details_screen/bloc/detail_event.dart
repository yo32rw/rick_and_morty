part of 'detail_bloc.dart';

@freezed
abstract class DetailEvent with _$DetailEvent {
  const factory DetailEvent.fetched({@Default(0) int id}) = _Fetched;
}
