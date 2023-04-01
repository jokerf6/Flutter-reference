import 'package:flutter/material.dart';

class tes3 extends StatefulWidget {
  const tes3({super.key});

  @override
  State<tes3> createState() => _tes3State();
}

class _tes3State extends State<tes3> {
  List mobile = [
    {"name": "samasung", "screen": "1.5", "price": "100"},
    {"name": "nokia", "screen": "1.5", "price": "100"},
    {"name": "Huawei", "screen": "1.5", "price": "100"},
  ];
  /*{"name": "samasung", "screen": "1.5", "price": "100"},
    {"name": "nokia", "screen": "1.5", "price": "100"},
    {"name": "Huawei", "screen": "1.5", "price": "100"},
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
            child: ListView.builder(
                itemCount: mobile.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: ((context, index) {
                  return ListTile(
                    title: Text("${mobile[index]["name"]}"),
                    subtitle: Text("${mobile[index]["screen"]}"),
                    trailing: Text("${mobile[index]["price"]}"),
                  );
                }))));
  }
}
