import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Flutter App"),
      centerTitle: true,
      ),
      body: Column(
        children: [
          Text("flutter app"),
          Text("flutter app"),
          Text("flutter app"),
        ],
      ),
    );
  }
}
