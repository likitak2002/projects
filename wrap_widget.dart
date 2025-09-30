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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          //   direction: Axis.vertical,
          alignment: WrapAlignment.spaceAround,
          spacing: 11,
          runSpacing: 21,
          children: [
            Container(width: 90, height: 100, color: Colors.blue),
            Container(width: 100, height: 100, color: Colors.orange),
            Container(width: 200, height: 100, color: Colors.green),
            Container(width: 150, height: 100, color: Colors.indigo),
          ],
        ),
      ),
    );
  }
}
