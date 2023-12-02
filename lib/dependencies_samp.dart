import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Packagedep extends StatefulWidget {
  const Packagedep({Key? key}) : super(key: key);

  @override
  State<Packagedep> createState() => _PackagedepState();
}

class _PackagedepState extends State<Packagedep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(),
      bottomNavigationBar: CurvedNavigationBar(items: [
        Icon(Icons.home),
        Icon(Icons.chat),
      ]),
    );
  }
}
