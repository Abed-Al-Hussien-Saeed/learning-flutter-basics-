import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

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
        appBar: AppBar(
          title: Text("my flutter app title "),
          centerTitle: true,
          leading: Icon(Icons.login),
          actions: [Text('hello'), Icon(Icons.login)],
          backgroundColor: Colors.red,
          //bottom: ,
        ),
      ),
    );
  }
}
