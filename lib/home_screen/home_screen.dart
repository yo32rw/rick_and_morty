import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GridView.count(crossAxisCount: 2, children: []));
  }
}

class CharacterCard extends StatelessWidget {
  const CharacterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 215,
      width: 160,
      child: Column(
        children: [
          // Container(decoration: BoxDecoration(image: Image.network())),
          Text('Rick'),
        ],
      ),
    );
  }
}
