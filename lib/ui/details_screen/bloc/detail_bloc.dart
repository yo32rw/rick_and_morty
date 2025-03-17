import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/character.dart';

import '../../../data/service/api_service.dart';

part 'detail_event.dart';
part 'detail_state.dart';
part 'detail_bloc.freezed.dart';
part 'detail_bloc.g.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc({required this.apiService}) : super(DetailState()) {
    on<_Fetched>(_onFetched);
  }

  final ApiService apiService;

  FutureOr<void> _onFetched(_Fetched event, Emitter<DetailState> emit) async {
    try {
      Character character = await apiService.getCharacterDetail(id: event.id);
      emit(state.copyWith(status: DetailStatus.success, character: character));
    } on Exception {
      emit(state.copyWith(status: DetailStatus.failure));
    }
  }
}
