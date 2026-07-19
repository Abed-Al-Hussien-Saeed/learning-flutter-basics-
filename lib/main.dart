import 'package:flutter/material.dart';
import 'package:the_ultimate_flutter_tutorial_for_beginners/Views/pages/Widget_tree.dart';
import 'widgets/navB.dart';

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
      home: WidgetTree(),
    );
  }
}
