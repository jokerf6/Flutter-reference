import 'package:flutter/material.dart';
import 'package:hello/inputs/input.dart';

class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: ElevatedButton(
            child: Text("Go"),
            onPressed: () {
              /*Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return in1();
            },
          )
          */
              //Navigator.of(context).pushNamed("one");
              Navigator.of(context).pushReplacementNamed("one");
            }));
  }
}
