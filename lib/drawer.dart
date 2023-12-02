import 'package:flutter/material.dart';

class Mydrawer extends StatefulWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer HOme"),
      ),
      body: Center(
        child: Text("home"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("MY DRAWER"), ),
            ListTile(
              leading: Icon(Icons.home), title: Text("Home "),
            )
          ],
        ),
      ),
    );
  }
}
