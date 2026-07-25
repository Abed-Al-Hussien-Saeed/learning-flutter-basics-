// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:the_ultimate_flutter_tutorial_for_beginners/Views/pages/welcome_page.dart';
import 'package:the_ultimate_flutter_tutorial_for_beginners/data/notifires.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          ListTile(
            title: Text('Logout'),
            onTap: () {
              selectedPageNotifier.value = 0;
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WelcomePage();
                  },
                ), // MaterialPageRoute
              );
            },
          ), // ListTile
        ],
      ), // Column
    ); // Padding
  }
}
