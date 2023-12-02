import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Colorpage extends StatefulWidget {
  const Colorpage({Key? key}) : super(key: key);

  @override
  State<Colorpage> createState() => _ColorpageState();
}

class _ColorpageState extends State<Colorpage> {
  Color clr = Colors.red;

  int a = 0;
  int b = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          a++;
          b++;

          if (a == 1) {
            setState(() {
              clr = Colors.black;
              
            });
          } else if (a == 2) {
            setState(() {
              clr = Colors.blueAccent;
            });
          } else if (a == 3) {
            setState(() {
              clr = Colors.yellow;
            });
          } else {
            a = 0;
            setState(() {
              clr = Colors.red;
            });
          }
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text("Color changing page"),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: clr,
          child: Center(
              child: Text(
            "$b",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          )),
        ),
      ),
    );
  }
}
