import 'package:flutter/material.dart';

class in2 extends StatefulWidget {
  const in2({super.key});

  @override
  State<in2> createState() => _in2State();
}

class _in2State extends State<in2> {
  var username;
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Form(
          key: formstate,
          child: Column(children: [
            TextFormField(
              onSaved: (newValue) {
                username = newValue;
              },
              autovalidateMode: AutovalidateMode.always,
              /* onChanged: (value) {
                setState(() {
                  text = value;
                });
              },*/
              onEditingComplete: () {
                print("Complete");
              },
              validator: (text) {
                if (text!.length < 4 && text.length > 0) {
                  return "Not Accepted";
                }
                return null;
              },
            ),
            ElevatedButton(
                onPressed: () {
                  var formdata = formstate.currentState;
                  if (formdata!.validate()) {
                    formdata.save();
                    print(username);
                  } else {
                    print("not valid");
                  }
                },
                child: Text("Send"))
          ]),
        ));
  }
}
