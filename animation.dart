// import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in a Flutter IDE). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Foo animations'),
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
  var _width = 200.00;
  var _height = 100.00; //private variables

  bool flag = true;

  var bgColr = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              duration: Duration(seconds: 2),
              height: _height,
              color: bgColr,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (flag) {
                    _width = 100.00;
                    _height = 200.00;
                    bgColr = Colors.green;
                    flag = false;
                  } else {
                    _width = 200.00;
                    _height = 100.00;
                    bgColr = Colors.blue;
                    flag = true;
                  }
                });
              },
              child: Text('Animate'),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
