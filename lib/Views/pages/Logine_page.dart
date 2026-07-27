import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_ultimate_flutter_tutorial_for_beginners/Views/widgets/Hero_Widget.dart';

TextEditingController controller = TextEditingController();

class LoginePage extends StatefulWidget {
  const LoginePage({super.key});

  @override
  State<LoginePage> createState() => _LoginePageState();
}

class _LoginePageState extends State<LoginePage> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            HeroWidget(title: 'hellosaeed '),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ), // InputDecoration
              onEditingComplete: () => setState(() {}),
            ),
          ],
        ),
      ),
    );
  }
}
