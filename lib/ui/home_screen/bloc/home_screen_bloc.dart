import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/character_summary.dart';
import 'package:rick_and_morty/data/service/api_service.dart';
import 'package:rick_and_morty/data/service/local_storage.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';
part 'home_screen_bloc.g.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  bool _canProcessEvent = false;

  HomeBloc({required this.apiService, required this.localStorage})
    : super(const HomeState()) {
    on<_Fetched>(_onFetched);
    on<_ChangeLike>(_onChangeLike);
  }

  final ApiService apiService;
  final LocalStorage localStorage;

  FutureOr<void> _onFetched(_Fetched event, Emitter<HomeState> emit) async {
    if (_canProcessEvent) return;
    if (state.hasReachedMax) return;
    _canProcessEvent = true;
    try {
      List<CharacterSummary> characters = await apiService.getCharactersList(
        page: state.currentPage,
      );
      final characterIds = localStorage.getCharacterIds();
      final List<CharacterSummary> charactersMod = [];
      for (var character in characters) {
        if (characterIds.contains(character.id)) {
          charactersMod.add(character.copyWith(isLiked: true));
        } else {
          charactersMod.add(character.copyWith(isLiked: false));
        }
      }
      if (state.lastPage != null && state.currentPage == state.lastPage) {
        return emit(state.copyWith(hasReachedMax: true));
      }
      final page = state.currentPage + 1;
      emit(
        state.copyWith(
          status: HomeStatus.success,
          currentPage: page,
          characters: [...state.characters, ...charactersMod],
        ),
      );
      await Future.delayed(Duration(milliseconds: 500));
      _canProcessEvent = false;
    } on Exception {
      emit(state.copyWith(status: HomeStatus.failure));
    }
  }

  FutureOr<void> _onChangeLike(_ChangeLike event, Emitter<HomeState> emit) {
    if (event.isLiked) {
      localStorage.setCharacterId(event.id);
    } else {
      localStorage.deleteCharacterId(event.id);
    }
    final List<CharacterSummary> characters = [];
    for (var character in state.characters) {
      if (character.id == event.id) {
        characters.add(character.copyWith(isLiked: event.isLiked));
      } else {
        characters.add(character);
      }
    }
    emit(state.copyWith(characters: characters));
  }
}
