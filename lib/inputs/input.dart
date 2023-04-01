import 'package:flutter/material.dart';

class in1 extends StatefulWidget {
  const in1({super.key});

  @override
  State<in1> createState() => _in1State();
}

class _in1State extends State<in1> {
  TextEditingController username = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dsdds"),
      ),
      body: Column(children: [
        Container(
          padding: EdgeInsets.all(10),
          child: TextFormField(
            // keyboardType: TextInputType.number,
            maxLength: 20,
            controller: username,
            //obscureText: true,
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Type your name",
              /*  prefixIcon: Icon(Icons.abc_outlined),
              prefix: Text("+20"),
              prefixStyle: TextStyle(color: Colors.black),
              hintStyle: TextStyle(color: Colors.red),
              hintMaxLines: 2,
              suffix: Text("@gmail.com"),
              suffixStyle: TextStyle(color: Colors.grey),
              filled: true,
              fillColor: Colors.green,
          */
              enabled: true,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.red, width: 3)),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Send"),
        ),
      ]),
    );
  }
}
