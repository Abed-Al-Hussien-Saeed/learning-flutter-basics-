// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';

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
  String? menuitem = 'e1';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton(
              value: menuitem,
              items: [
                DropdownMenuItem(value: "e1", child: Text("ELEMET 1 ")),
                DropdownMenuItem(value: "e2", child: Text("ELEMET 2 ")),
                DropdownMenuItem(value: "e3", child: Text("ELEMET 3 ")),
              ],
              onChanged: (String? value) {
                setState(() {
                  menuitem = value;
                });
              },
            ),
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
            InkWell(
              splashColor: Colors.red,
              onTap: () {
                print("u tapped the image");
              },
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.white12,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: Text('Click me'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: Text('Click me'),
            ),
            FilledButton(onPressed: () {}, child: Text('Click me')),
            TextButton(onPressed: () {}, child: Text('Click me')),
            OutlinedButton(onPressed: () {}, child: Text('Click me')),
            CloseButton(),
            BackButton(),
          ], //childrenof the column
        ),
      ),
    );
  }
}
