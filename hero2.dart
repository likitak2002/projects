import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail')),
      body: Hero(
        tag: 'background',
        child: Image.asset('assets/images/SOUL_SPOON.png'),
      ),
    );
  }
}
