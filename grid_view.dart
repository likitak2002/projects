import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Counter Home Page'),
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
    var arrColors = [
      Colors.cyan,
      Colors.pink,
      Colors.teal,
      Colors.amber,
      Colors.lightGreenAccent,
      Colors.deepOrange,
      Colors.purple,
      Colors.indigoAccent,
    ];

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 11,
          mainAxisSpacing: 12,
        ),
        itemBuilder: (context, index) {
          return Container(color: arrColors[index]);
        },
        itemCount: arrColors.length,
      ),

      //   body: Column(
      //     children: [

      //   GridView.count(
      //     crossAxisCount: 3,
      //     crossAxisSpacing: 11,
      //     mainAxisSpacing: 11,
      //     children: [
      //       Container(color: arrColors[0]),
      //       Container(color: arrColors[1]),
      //       Container(color: arrColors[2]),
      //       Container(color: arrColors[3]),
      //       Container(color: arrColors[4]),
      //       Container(color: arrColors[5]),
      //       Container(color: arrColors[6]),
      //       Container(color: arrColors[7]),
      //     ],
      //   ),

      //   Container(height: 100),
      //   Container(
      //     height: 200,
      //     child: GridView.extent(
      //       maxCrossAxisExtent: 50,
      //       crossAxisSpacing: 11,
      //       mainAxisSpacing: 11,
      //       children: [
      //         Container(color: arrColors[0]),
      //         Container(color: arrColors[1]),
      //         Container(color: arrColors[2]),
      //         Container(color: arrColors[3]),
      //         Container(color: arrColors[4]),
      //         Container(color: arrColors[5]),
      //         Container(color: arrColors[6]),
      //         Container(color: arrColors[7]),
      //       ],
      //     ),
      //   ),
      // ],
    );
  }
}
