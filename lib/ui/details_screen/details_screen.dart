import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../data/character.dart';
import '../core/colors.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  static Character character = Character(
    id: 4,
    name: 'Beth Smith',
    status: 'Alive',
    species: 'Human',
    gender: 'Female',
    image: 'https://rickandmortyapi.com/api/character/avatar/4.jpeg',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('Name'),
            subtitle: Text(character.name),
          ),
        ],
      ),
    );
  }
}

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
