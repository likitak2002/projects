import 'package:flutter/material.dart';
import 'package:hero_animation/detail_page.dart';
// import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hero')),
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailPage()),
          );
        },
        child: Center(
          child: Hero(
            tag: 'background',
            child: Image.asset(
              'assets/images/female.jpeg',
              width: 100,
              height: 100,
            ),
          ),
        ),
      ),
    );
  }
}
