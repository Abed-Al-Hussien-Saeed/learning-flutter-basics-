import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String? title;

// stateless and
// martial app
// scafold
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

      home: Scaffold(
        appBar: AppBar(title: Text(title!), centerTitle: true),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "home "),
            NavigationDestination(
              icon: Icon(Icons.person_3_rounded),
              label: "profile ",
            ),
          ],
          selectedIndex: 0,
        ),
        drawer: SafeArea(
          child: Drawer(
            child: Column(children: [ListTile(title: Text('logout'))]),
          ),
        ),
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () {
                print("helloo hru ");
              },
              child: Icon(Icons.add),
            ),
            SizedBox(height: 30),
            FloatingActionButton(
              onPressed: () {
                print("helloo abed saeed  ");
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
