import 'package:flutter/material.dart';
import 'package:the_ultimate_flutter_tutorial_for_beginners/data/notifires.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool Isswitched = false;
  double Slidervalue = 0.0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ), // InputDecoration
              onEditingComplete: () => setState(() {}),
            ), // TextField
            Text(controller.text),
            Checkbox(
              tristate: true,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ), // Checkbox
            CheckboxListTile(
              tristate: true,
              title: Text('Click me'),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            Switch.adaptive(
              value: Isswitched,
              onChanged: (value) {
                setState(() {
                  Isswitched = value;
                });
              },
            ),
            SwitchListTile.adaptive(
              title: Text('Click me'),
              value: Isswitched,
              onChanged: (value) {
                setState(() {
                  Isswitched = value;
                });
              },
            ),
            Slider.adaptive(
              max: 10,
              value: Slidervalue,
              divisions: 10,
              onChanged: (double value) {
                setState(() {
                  Slidervalue = value;
                });
                print(Slidervalue);
              },
            ),
            Image.asset(
              'assets/image/bg.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/image/bg.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ],
        ), // Column
      ),
    ); // Padding
  }
}
