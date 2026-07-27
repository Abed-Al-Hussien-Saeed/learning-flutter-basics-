import 'package:flutter/material.dart';
import 'package:the_ultimate_flutter_tutorial_for_beginners/Views/pages/Widget_tree.dart';
import 'package:lottie/lottie.dart';

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
            /*  Lottie.network(
              'https://lottie.host/df42d64c-45fe-4df9-b60f-e5947d065f83/yuFqwge8X5.json',
            ),*/
            /*Lottie.network(
              'https://lottie.host/7932e43b-c30e-4aef-85d2-2651e429be2c/yZmOfZYWmQ.lottie',
            ),*/
            Center(
              child: Lottie.asset(
                'assets/lottie/Welcome.Json',
                width: 100,
                height: 100,
              ),
            ),

            Text("fluttter map", style: TextStyle()),
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
