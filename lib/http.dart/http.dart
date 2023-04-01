import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class http1 extends StatefulWidget {
  const http1({super.key});

  @override
  State<http1> createState() => _http1State();
}

class _http1State extends State<http1> {
  List posts = [];
  Future getPost() async {
    var url = Uri.https("jsonplaceholder.typicode.com", "/posts");
    var response = await http.get(url);
    var body = jsonDecode(response.body);
    return body;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: FutureBuilder(
          future: getPost(),
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: ((context, index) => Container(
                      child: Text(snapshot.data[index]['title'].toString()))));
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
        ));
  }
}
