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
        width: 300,
        height: 300,
        child: Stack(
          children: [
            Container(width: 200, height: 200, color: Colors.green),
            Positioned(
              left: 20,
              top: 28,
              bottom: 34,
              right: 45,
              child: Container(width: 160, height: 160, color: Colors.grey),
            ),
            //   Container(width: 100, height: 200, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
