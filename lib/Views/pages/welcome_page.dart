import 'package:flutter/material.dart';
import 'package:the_ultimate_flutter_tutorial_for_beginners/Views/pages/Widget_tree.dart';
import 'package:the_ultimate_flutter_tutorial_for_beginners/Views/widgets/Hero_Widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeroWidget(),
            FilledButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WidgetTree();
                    },
                  ),
                );
              },
              child: Text("press me "),
            ),
          ],
        ),
      ),
    );
  }
}
