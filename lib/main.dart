import 'package:flutter/material.dart';
import 'package:hello/AppBar/navbar.dart';
import 'package:hello/AppBar/tabBar.dart';
import 'package:hello/Grid/GridViewBuilder.dart';
import 'package:hello/List/ListViewBuilder.dart';
import 'package:hello/http.dart/http.dart';
import 'package:hello/inputs/input.dart';
import 'package:hello/inputs/input2.dart';
import 'package:hello/navigator/nav.dart';
import 'package:hello/navigator/slider.dart';
import 'package:hello/pageView.dart';
import 'package:hello/search.dart';
import 'List/ListView.dart';
import 'List/List.dart';
import 'List/ListViewSeperator.dart';
import 'AppBar/appBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: http1(),
      routes: {
        "one": (context) {
          return in1();
        }
      },
    );
  }
}
