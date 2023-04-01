import 'package:flutter/material.dart';

class test2 extends StatefulWidget {
  const test2({super.key});

  @override
  State<test2> createState() => _test2State();
}

class _test2State extends State<test2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
            child: ListView.builder(
                itemCount: 4,
                physics: BouncingScrollPhysics(),
                itemBuilder: ((context, index) {
                  return Container(
                    child: Text("Conrainer $index"),
                    height: 300,
                    color: Colors.red,
                    margin: EdgeInsets.only(top: 10),
                  );
                }))));
  }
}
