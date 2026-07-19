import 'package:flutter/material.dart';

class navB extends StatefulWidget {
  const navB({super.key});

  @override
  State<navB> createState() => _navBState();
}

class _navBState extends State<navB> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [
        NavigationDestination(icon: Icon(Icons.maps_home_work), label: 'map'),
        NavigationDestination(icon: Icon(Icons.map_outlined), label: 'map1'),
      ],
      onDestinationSelected: (int value) {
        setState(() {
          currentIndex = value;
        });
      },
      selectedIndex: currentIndex,
    );
  }
}
