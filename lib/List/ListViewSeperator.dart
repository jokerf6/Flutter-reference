import 'package:flutter/material.dart';

class tes4 extends StatefulWidget {
  const tes4({super.key});

  @override
  State<tes4> createState() => _tes4State();
}

class _tes4State extends State<tes4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
            child: ListView.separated(
                separatorBuilder: ((context, index) {
                  return Divider(
                    color: Colors.red,
                  );
                }),
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
