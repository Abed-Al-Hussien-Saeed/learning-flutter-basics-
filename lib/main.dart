import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String name = "hello abed";
int n = 33;
double d = 3.14;
List list = [1, 2, 3, 4, "hade "];
Map map = {"name": "abed", "age": 33, "height": 1.75};

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: Colors.greenAccent,
          brightness: Brightness.dark,
        ),
      ),
      home: const MyHomePage(title: 'practice make perfect'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Image.asset('assets/image/bg.jpg', fit: BoxFit.cover),

          // Fixed-size box, pinned to top-left with explicit size
          Positioned(
            top: 20,
            left: 20,
            width: 100,
            height: 50,
            child: Container(
              color: Colors.black54,
              child: Center(
                child: Text('Tag', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),

          // Stretched across the bottom, using opposite sides instead of width/height
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            height: 60,
            child: Container(
              color: Colors.black54,
              child: Center(
                child: Text('Name is :', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
