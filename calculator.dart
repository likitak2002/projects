import 'dart:async';

import 'package:flutter/material.dart';

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  var result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator')),
      body: Container(
        color: Colors.blue.shade200,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1Controller,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2Controller,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());

                          var sum = no1 + no2;

                          result = 'The sum of $no1 and $no2 is $sum';

                          setState(() {});
                        },
                        child: Icon(Icons.add),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());

                          var sum = no1 - no2;

                          result = 'The diff of $no1 and $no2 is $sum';

                          setState(() {});
                        },
                        child: Icon(Icons.remove),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());

                          var sum = no2 * no1;
                          result =
                              'Multiplication of $no2 and $no1 is ${sum.toStringAsFixed(2)}';
                          setState(() {});
                        },
                        child: Text('multi'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());

                          var sum = no1 / no2;

                          result =
                              'the division of $no1 and $no2 is ${sum.toStringAsFixed(3)}';
                          setState(() {});
                        },
                        child: Text('div'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    result,
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
