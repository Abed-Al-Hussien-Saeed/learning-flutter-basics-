import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // varible to change the current index or the thing we are at
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        brightness: Brightness.light,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('maps of flutter')), // or add drawer here
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.maps_home_work),
              label: 'map',
            ),
            NavigationDestination(
              icon: Icon(Icons.map_outlined),
              label: 'map1',
            ),
          ],
          onDestinationSelected: (int value) {
            setState(() {
              currentIndex = value;
            });
          },
          selectedIndex: currentIndex,
        ),
        // add drawers here
        drawer: Drawer(
          child: Column(
            children: [
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  // Handle item 1 tap
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  // Handle item 2 tap
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
