import 'package:flutter/material.dart';

class search1 extends StatefulWidget {
  const search1({super.key});

  @override
  State<search1> createState() => _search1State();
}

class _search1State extends State<search1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: search());
              },
              icon: Icon(Icons.search))
        ],
      ),
    );
  }
}

class search extends SearchDelegate {
  List names = [
    "wael",
    "fahd",
    "talal",
    "hakem",
    "retag",
    "said",
    "mohaned",
    "fady",
    "kero"
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("${query}");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List filter = names.where((element) => element.startsWith(query)).toList();
    return ListView.builder(
        itemCount: query == "" ? 0 : filter.length,
        itemBuilder: ((context, index) {
          return InkWell(
              onTap: () {
                query = filter[index];
                showResults(context);
              },
              child: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "${filter[index]}",
                  style: TextStyle(fontSize: 25),
                ),
              ));
        }));
  }
}
