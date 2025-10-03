// import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterbasics/profile_screen.dart';
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
  var namcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Container(
          width: 250,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dashboard screen', style: TextStyle(fontSize: 25)),
                SizedBox(height: 11),
                TextField(controller: namcontroller),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProfileScreen(namcontroller.text.toString()),
                      ),
                    );
                  },
                  child: Text('My profile'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
