import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/ui/details_screen/bloc/detail_bloc.dart';

import '../../data/character.dart';
import '../../di/injection_container.dart';
import '../../routing/routes.dart';
import '../core/colors.dart';
import '../core/text_theme.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.id});
  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DetailBloc>(
      create: (context) => sl()..add(DetailEvent.fetched(id: id)),
      child: Scaffold(
        body: BlocBuilder<DetailBloc, DetailState>(
          builder: (context, state) {
            switch (state.status) {
              case DetailStatus.initial:
                return const Center(child: CircularProgressIndicator());
              case DetailStatus.loading:
                return const Center(child: CircularProgressIndicator());
              case DetailStatus.failure:
                return const Center(child: Text('error'));
              case DetailStatus.success:
                return DetailsView(character: state.character!);
            }
          },
        ),
      ),
    );
  }
}

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.character});

  final Character character;
  // Character(
  //   id: 4,
  //   name: 'Beth Smith',
  //   status: 'Alive',
  //   species: 'Human',
  //   gender: 'Female',
  //   image: 'https://rickandmortyapi.com/api/character/avatar/4.jpeg',
  // );

  final Map map = const <String, String>{
    'Alien': 'assets/icons/alien.svg',
    'Alive': 'assets/icons/alive.svg',
    'Dead': 'assets/icons/dead.svg',
    'Female_gender': 'assets/icons/female.svg',
    'Human': 'assets/icons/human.svg',
    'Male_gender': 'assets/icons/male.svg',
    'unknown': 'assets/icons/unknown_alive.svg',
    'unknown_gender': 'assets/icons/unknown_gender.svg',
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 260,
          child: Stack(
            children: [
              Image.network(
                character.image,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(left: 20, top: 45, child: BackButton()),
            ],
          ),
        ),
        DetailsCard(
          svgAssetName: 'assets/icons/information.svg',
          title: 'Name',
          subtitle: character.name,
        ),
        DetailsCard(
          svgAssetName: map[character.status],
          title: 'Status',
          subtitle: character.status,
        ),
        DetailsCard(
          svgAssetName: map[character.species],
          title: 'Species',
          subtitle: character.species,
        ),
        DetailsCard(
          svgAssetName: map[('${character.gender}_gender')],
          title: 'Gender',
          subtitle: character.gender,
        ),
      ],
    );
  }
}

class DetailsCard extends StatelessWidget {
  const DetailsCard({
    super.key,
    required this.svgAssetName,
    required this.title,
    required this.subtitle,
  });

  final String svgAssetName;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: AppColors.irisBlue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            svgAssetName,
            colorFilter: ColorFilter.mode(
              AppColors.whiteSmoke,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
      title: Text(title, style: AppTextTheme.bodyMedium),
      subtitle: Text(subtitle, style: AppTextTheme.subtitleBold),
    );
  }
}

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pop(),
      child: Container(
        height: 44,
        width: 44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(44),
          color: AppColors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}
