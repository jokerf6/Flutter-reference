import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(10),
          physics: BouncingScrollPhysics(),
          reverse: false,
          children: [
            Container(
              child: Text("HOW ARE YOY"),
              color: Colors.red,
              height: 300,
            ),
            Divider(
              color: Colors.black,
            ),
            Container(
              child: Text("HOW ARE YOY"),
              color: Colors.blue,
              height: 300,
            ),
            Container(
              child: Text("HOW ARE YOY"),
              color: Colors.black,
              height: 300,
            ),
          ]),
    );
  }
}
