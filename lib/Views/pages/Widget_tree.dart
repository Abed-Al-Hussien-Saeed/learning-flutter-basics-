import 'package:flutter/material.dart';
import 'package:the_ultimate_flutter_tutorial_for_beginners/Views/pages/Homepage.dart';
import 'package:the_ultimate_flutter_tutorial_for_beginners/Views/pages/Profilepage.dart';
import '../../widgets/navB.dart';


List<Widget> pages = [
  Homepage(),
  Profilepage(),

]
class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('maps of flutter')), // or add drawer here
      bottomNavigationBar: navB(),
      body : pages.elementAt(1)
     
    );
  }
}
