import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'hero1',
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(20.0),
        child: Image.asset(
          'assets/image/bg.jpg',
          color: Colors.red,
          colorBlendMode: BlendMode.modulate,
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
