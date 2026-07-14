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
        leading: Icon(Icons.notification_add, color: Colors.amberAccent),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Stack(
          children: [
            ListTile(
              leading: Icon(Icons.explicit_sharp),
              tileColor: Colors.red,
              title: Text('hello abed saeed '),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
    /* body: Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVVZ65VaVMw2WQ6vn3znem5zBZZRU2bX1LRc3NAdVVuA&s=10',
        height: double.infinity,
        fit: BoxFit.cover,// what infinite is
    );*/
  }
}
