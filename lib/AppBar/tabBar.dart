import 'package:flutter/material.dart';

class app2 extends StatefulWidget {
  const app2({super.key});

  @override
  State<app2> createState() => _app2State();
}

class _app2State extends State<app2> {
  @override
  void initState() {
    print("object");
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text("Homepage"),
            bottom: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 5,
                labelColor: Colors.white,
                onTap: (value) {
                  print(value);
                },
                tabs: [
                  Tab(
                    child: Text("wi one"),
                  ),
                  Tab(
                    child: Text("wi two"),
                  ),
                  Tab(
                    child: Text("wi three"),
                  )
                ]),
          ),
          body: TabBarView(children: [
            Container(
              width: double.infinity,
              color: Colors.red,
            ),
            Container(
              width: double.infinity,
              color: Colors.green,
            ),
            Container(
              width: double.infinity,
              color: Colors.blue,
            )
          ]),
        ));
  }
}
