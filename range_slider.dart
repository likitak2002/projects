// import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:flutterbasics/profile_screen.dart';
// import 'package:flutterbasics/Intropage.dart';
import 'package:flutterbasics/widgets/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Counter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  RangeValues values = RangeValues(0, 100);
  var namcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: RangeSlider(
        values: values,
        labels: labels,
        divisions: 5,
        activeColor: Colors.green,
        inactiveColor: Colors.green.shade100,
        min: 0,
        max: 100,
        onChanged: (newValue) {
          values = newValue;
          print('${newValue.start}, ${newValue.end}');
          setState(() {});
        },
      ),
    );
  }
}
