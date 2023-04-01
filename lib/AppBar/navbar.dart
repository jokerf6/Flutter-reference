import 'package:flutter/material.dart';

class app4 extends StatefulWidget {
  const app4({super.key});

  @override
  State<app4> createState() => _app4State();
}

class _app4State extends State<app4> {
  int selected = 0;
  List<Widget> widgetPages = [
    Text(
      "fahd",
      style: TextStyle(fontSize: 40),
    ),
    Text(
      "talal",
      style: TextStyle(fontSize: 40),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.orange,
          currentIndex: selected,
          onTap: (value) {
            setState(() {
              selected = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                label: "ddsds", icon: Icon(Icons.ac_unit_outlined)),
            BottomNavigationBarItem(
                label: "ddsds", icon: Icon(Icons.ac_unit_outlined))
          ]),
      body: widgetPages.elementAt(selected),
    );
  }
}
