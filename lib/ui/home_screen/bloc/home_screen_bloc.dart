import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/character_summary.dart';
import 'package:rick_and_morty/data/service/api_service.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';
part 'home_screen_bloc.g.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  bool _canProcessEvent = false;

  HomeBloc(this._apiService) : super(const HomeState()) {
    on<_Fetched>(_onFetched);
    on<_ChangeLike>(_onChangeLike);
  }

  final ApiService _apiService;

  FutureOr<void> _onFetched(_Fetched event, Emitter<HomeState> emit) async {
    if (_canProcessEvent) return;
    if (state.hasReachedMax) return;
    _canProcessEvent = true;
    try {
      final List<CharacterSummary> characters = await _apiService
          .getCharactersList(page: state.currentPage);
      if (state.lastPage != null && state.currentPage == state.lastPage) {
        return emit(state.copyWith(hasReachedMax: true));
      }
      final page = state.currentPage + 1;
      emit(
        state.copyWith(
          status: HomeStatus.success,
          currentPage: page,
          characters: [...state.characters, ...characters],
        ),
      );
      await Future.delayed(Duration(milliseconds: 500));
      _canProcessEvent = false;
    } on Exception catch (error) {
      emit(state.copyWith(status: HomeStatus.failure));
    }
  }

  FutureOr<void> _onChangeLike(_ChangeLike event, Emitter<HomeState> emit) {}
}
