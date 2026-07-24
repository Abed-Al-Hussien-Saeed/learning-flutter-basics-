import 'package:flutter/material.dart';
import 'package:the_ultimate_flutter_tutorial_for_beginners/data/notifires.dart';

class navB extends StatelessWidget {
  const navB({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return NavigationBar(
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
          onDestinationSelected: (int index) {
            selectedPageNotifier.value = index;
          },
          selectedIndex: selectedPage,
        );
      },
    );
  }
}
 