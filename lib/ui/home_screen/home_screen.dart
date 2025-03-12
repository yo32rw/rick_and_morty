import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rick_and_morty/data/service/api_service.dart';
import 'package:rick_and_morty/ui/core/colors.dart';
import 'package:rick_and_morty/ui/core/text_theme.dart';

import '../../data/character_summary.dart';
import 'bloc/home_screen_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(ApiService())..add(HomeEvent.started()),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          switch (state.status) {
            case HomeStatus.initial:
              return Center(child: Text('initial'));
            case HomeStatus.loading:
              return const Center(child: CircularProgressIndicator());
            case HomeStatus.failure:
              return const Center(child: Text('error'));
            case HomeStatus.success:
              return GridView.builder(
                padding: EdgeInsets.fromLTRB(10, 55, 10, 0),
                itemCount: state.characters?.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.74,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return CharacterCard(
                    characterSummary: state.characters![index],
                  );
                },
              );
          }
        },
      ),
    );
  }
}

class CharacterCard extends StatelessWidget {
  const CharacterCard({super.key, required this.characterSummary});

  final CharacterSummary characterSummary;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  child: Image.network(characterSummary.image),
                ),
                Positioned(right: 10, top: 10, child: LikeButton()),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Text(characterSummary.name, style: AppTextTheme.bodyBold),
            ),
          ],
        ),
      ),
    );
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton({super.key});

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
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
