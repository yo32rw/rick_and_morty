import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/di/injection_container.dart';
import 'package:rick_and_morty/ui/core/colors.dart';
import 'package:rick_and_morty/ui/core/text_theme.dart';

import '../../data/character_summary.dart';
import '../../routing/routes.dart';
import 'bloc/home_screen_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => getIt()..add(HomeEvent.fetched()),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          switch (state.status) {
            case HomeStatus.initial:
              return Center(child: CircularProgressIndicator());
            case HomeStatus.loading:
              return const Center(child: CircularProgressIndicator());
            case HomeStatus.failure:
              return const Center(child: Text('error'));
            case HomeStatus.success:
              return GridView.builder(
                controller: _scrollController,
                padding: EdgeInsets.fromLTRB(10, 55, 10, 0),
                itemCount:
                    state.hasReachedMax
                        ? state.characters.length
                        : state.characters.length + 1,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.74,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return index >= state.characters.length
                      ? CircularProgressIndicator()
                      : CharacterCard(
                        characterSummary: state.characters[index],
                      );
                },
              );
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      // print('bottom');
      context.read<HomeBloc>().add(HomeEvent.fetched());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}

class CharacterCard extends StatelessWidget {
  const CharacterCard({super.key, required this.characterSummary});

  final CharacterSummary characterSummary;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go(Routes.details),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 5,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    child: Image.network(characterSummary.image),
                  ),
                  Positioned(
                    right: 10,
                    top: 10,
                    child: LikeButton(id: characterSummary.id),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  characterSummary.name,
                  style: AppTextTheme.bodyBold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton({super.key, required this.id});

  final int id;
  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<HomeBloc>().add(
          HomeEvent.changeLike(isLiked: isLiked, id: widget.id),
        );

        setState(() => isLiked = !isLiked);
      },
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child:
              isLiked
                  ? SvgPicture.asset('assets/icons/like.svg')
                  : SvgPicture.asset('assets/icons/unlike.svg'),
        ),
      ),
    );
  }
}
