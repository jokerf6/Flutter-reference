import 'package:flutter/material.dart';

class app1 extends StatefulWidget {
  const app1({super.key});

  @override
  State<app1> createState() => _app1State();
}

class _app1State extends State<app1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        /*leading: IconButton(
          icon: Icon(Icons.add),
          onPressed: () {},
        ),
        */
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app)),
          IconButton(onPressed: () {}, icon: Icon(Icons.alarm))
        ],
        //    elevation: 50, // الظل
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(children: [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white, child: Text("ds")),
              accountName: Text("fahd"),
              accountEmail: Text("fhakem75@gmail.com")),
          ListTile(
            title: Text("Home page"),
            leading: Icon(
              Icons.home,
              color: Colors.green[900],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text("About"),
            leading: Icon(
              Icons.help_center,
              color: Colors.green[300],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text("Logout"),
            leading: Icon(Icons.exit_to_app, color: Colors.green[300]),
            onTap: () {},
          ),
          ListTile(
            title: Text("Help"),
            leading: Icon(Icons.help, color: Colors.green[300]),
            onTap: () {},
          ),
        ]),
      ),
    );
  }
}
