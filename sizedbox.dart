import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Wrap(
        direction: Axis.vertical,
        children: [
          SizedBox.square(
            dimension: 100,
            child: ElevatedButton(onPressed: () {}, child: Text('Click here')),
          ),

          SizedBox(height: 20),

          SizedBox.square(
            dimension: 100,
            child: ElevatedButton(onPressed: () {}, child: Text('Click here')),
          ),
          SizedBox(height: 20),
          SizedBox.square(
            dimension: 100,
            child: ElevatedButton(onPressed: () {}, child: Text('Click here')),
          ),
        ],
      ),
    );
  }
}
