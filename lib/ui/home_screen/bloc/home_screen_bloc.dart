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
  HomeBloc(this._apiService) : super(const HomeState()) {
    on<_Started>(_onStarted);
  }

  final ApiService _apiService;

  FutureOr<void> _onStarted(_Started event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: HomeStatus.loading));
    try {
      final List<CharacterSummary> characters =
          await _apiService.getCharactersList();
      emit(state.copyWith(status: HomeStatus.success, characters: characters));
    } on Exception catch (error) {
      emit(state.copyWith(status: HomeStatus.failure));
    }
  }
}
