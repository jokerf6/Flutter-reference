import 'package:flutter/material.dart';

class pag1 extends StatefulWidget {
  const pag1({super.key});

  @override
  State<pag1> createState() => _pag1State();
}

class _pag1State extends State<pag1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("home"),
        ),
        body: Column(
          children: [
            Container(
              height: 300,
              child: PageView(children: [
                Image.asset("images/2.png", fit: BoxFit.fill),
                Image.asset("images/1.jpg", fit: BoxFit.fill),
                Image.asset("images/3.jpg", fit: BoxFit.fill),
                Image.asset("images/4.jpeg", fit: BoxFit.fill)
              ]),
            )
          ],
        )
        //PageView(children: [

        /*Image.asset("/image/2.jpg", fit: BoxFit.fill),
        Image.asset("/image/3.jpg", fit: BoxFit.fill),
        Image.asset("/image/4.jpeg", fit: BoxFit.fill),*/
//      ]),
        );
  }
}
