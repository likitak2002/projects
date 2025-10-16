// import 'dart:math';

// import 'dart:async';

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
      theme: ThemeData(),
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
  bool isFirst = true;
  // var myOpacity = 1.0;
  // bool isVisible = true;
  @override
  void initState() {
    super.initState();
    // Timer(Duration(seconds: 4), () {
    //   reload();
    // });
  }

  void reload() {
    setState(() {
      if (isFirst) {
        isFirst = false;
      } else {
        isFirst = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              duration: Duration(seconds: 2),
              firstChild: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
              secondChild: Image.asset(
                'assets/images/image.jpeg',
                width: 100,
                height: 100,
              ),
              firstCurve: Curves.bounceOut,
              secondCurve: Curves.easeInBack,
              crossFadeState: isFirst
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond, //true:false
            ),
            ElevatedButton(
              onPressed: () {
                // isFirst = false;
                setState(() {
                  reload();
                });
              },
              child: Text('SHOW'),
            ),
          ],
        ),
      ),
    );
  }
}
