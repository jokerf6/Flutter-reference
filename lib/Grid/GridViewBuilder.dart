import 'package:flutter/material.dart';

class grid1 extends StatefulWidget {
  const grid1({super.key});

  @override
  State<grid1> createState() => _grid1State();
}

class _grid1State extends State<grid1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: GridView.builder(
          //scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1.5),
          itemBuilder: ((context, index) {
            return ListTile(
              tileColor: Colors.red,
              title: Text("DSDSDS"),
              subtitle: Text("SDD"),
            );
          })),
    );
  }
}
