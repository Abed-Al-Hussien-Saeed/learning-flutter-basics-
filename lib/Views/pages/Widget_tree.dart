import 'package:flutter/material.dart';
import '../../Views/pages/Homepage.dart';
import '../../Views/pages/Profilepage.dart';
import '../widgets/navB.dart';
import '/data/notifires.dart';

List<Widget> pages = [Home_page(), Progile_page()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('maps of flutter')), // or add drawer here
      bottomNavigationBar: navB(),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
    );
  }
}
