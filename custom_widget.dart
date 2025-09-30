import 'package:flutter/material.dart';
import 'package:flutterbasics/ui_helper/util.dart';
import 'package:flutterbasics/widgets/rounded_button.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 50,
              child: RoundedButton(
                button: 'PLAY',
                icon: Icon(Icons.play_arrow),
                callback: () {
                  print("Logged in ");
                },
                textstyle: mTextStyle21(),
              ),
            ),
            Container(height: 11),
            Container(
              width: 150,
              height: 50,
              child: RoundedButton(
                button: 'press',
                // icon: Icon(Icons.play_arrow),
                callback: () {
                  print("Playing...");
                },
                bgcolor: Colors.deepOrange,
                textstyle: mTextStyle11(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
