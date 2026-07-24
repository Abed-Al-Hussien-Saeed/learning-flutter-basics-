import 'package:flutter/material.dart';

class Progile_page extends StatefulWidget {
  const Progile_page({super.key});

  @override
  State<Progile_page> createState() => _Progile_pageState();
}

class _Progile_pageState extends State<Progile_page> {
  TextEditingController ControllerfromProfile = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            controller: ControllerfromProfile,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your name',
            ),
            onEditingComplete: () {
              setState(() {});
            },
          ),
          Text('Your name is: ${ControllerfromProfile.text}'),
        ],
      ),
    );
  }
}
