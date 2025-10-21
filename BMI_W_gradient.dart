// import 'dart:async';

// import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:flutterbasics/profile_screen.dart';
// import 'package:flutterbasics/Intropage.dart';
// import 'package:flutterbasics/widgets/splash_screen.dart';

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
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var insController = TextEditingController();
  var result = "";
  var bgColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, title: Text('BMI APP ')),
      body: Container(
        color: bgColor,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  Color(0xffffecd2),
                  Color(0xffff9a9e),
                  // Color(0xfff6d365),
                ],
                // begin: FractionalOffset(1.0, 0.5),
                // end: FractionalOffset(0.0, 0.5),
                center: Alignment.bottomCenter,
                stops: [0.2, 0.4],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'BMI',
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 21),
                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                    label: Text('Enter yourweight (in kgs)'),
                    prefixIcon: Icon(Icons.line_weight_outlined),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 11),
                TextField(
                  controller: ftController,
                  decoration: InputDecoration(
                    label: Text('Enter your height (in cms)'),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.numberWithOptions(signed: true),
                ),
                SizedBox(height: 11),

                ElevatedButton(
                  onPressed: () {
                    var wt = wtController.text.toString();
                    var ft = ftController.text.toString();
                    // var ins = insController.text.toString();

                    if (wt != "" && ft != "") {
                      //BMI CALCULATOR

                      var iWt = double.parse(wt);
                      var iFt = double.parse(ft);
                      // var iins = int.parse(ins);

                      // var tins = (iFt * 12) + iins;

                      // var tcm;

                      var tM = iFt / 100;

                      var a = tM * tM;

                      var bmi = iWt / a;

                      // ignore: unused_local_variable
                      var msg = '';

                      if (bmi > 25) {
                        msg = "You're overweight";
                        bgColor = Colors.red;
                      } else if (bmi < 18) {
                        msg = " You're underweight";
                        bgColor = Colors.amber;
                      } else {
                        msg = "You're healthy ";
                        bgColor = Colors.green;
                      }

                      result = '$msg \n BMI is ${bmi.toStringAsFixed(2)}';
                      setState(() {});
                    } else {
                      setState(() {
                        result = 'Please fill all the required inputs ';
                      });
                    }
                  },
                  child: Text('Calculate'),
                ),
                SizedBox(height: 11),
                Text(result, style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
