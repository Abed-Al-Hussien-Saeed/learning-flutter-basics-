import 'package:flutter/material.dart';
import 'package:the_ultimate_flutter_tutorial_for_beginners/Views/widgets/hero_widget.dart';
import 'package:the_ultimate_flutter_tutorial_for_beginners/data/constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          HeroWidget(),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Basic Layout', style: ktextstyle.title),
                    Text('The description of this', style: ktextstyle.des),
                  ],
                ), // Column
              ), // Padding
            ), // Card
          ), // Container
        ],
      ), // Column
    ); // Padding
  }
}
