import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String title = 'hello abed saeed ';

// statefull can referesh
//stateless can't referch
//setstate to refersh
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),

      home: Myhomepage(),
    );
  }
}

class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  // U CAN WRITE DOWN YOUR VARIBES
  int current_index = 0;
  @override
  Widget build(BuildContext context) {
    // or here  nad here when u referch the screen u find it referchs too
    return Scaffold(
      appBar: AppBar(title: Text(title), centerTitle: true), // AppBar
      body: current_index == 0
          ? Center(child: Text('Home Page'))
          : Center(child: Text('Profile Page')),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
            icon: Icon(Icons.person_3_rounded),
            label: 'Profile',
          ),
        ], // NavigationDestination
        onDestinationSelected: (int value) {
          setState(() {
            current_index = value;
          });
        },
        selectedIndex: current_index,
      ),
    );
  }
}
