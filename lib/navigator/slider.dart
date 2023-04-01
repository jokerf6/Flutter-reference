import 'package:flutter/material.dart';

class slide1 extends StatefulWidget {
  const slide1({super.key});

  @override
  State<slide1> createState() => _slide1State();
}

class _slide1State extends State<slide1> {
  double x = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Slider(
              activeColor: Colors.green,
              inactiveColor: Colors.black,
              min: 0.0,
              max: 100.0,
              value: x,
              onChanged: ((value) {
                setState(() {
                  x = value;
                });
              }))
        ],
      ),
    );
  }
}
