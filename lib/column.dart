import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnTask1 extends StatefulWidget {
  const ColumnTask1({Key? key}) : super(key: key);

  @override
  State<ColumnTask1> createState() => _ColumnTask1State();
}

class _ColumnTask1State extends State<ColumnTask1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Row(
        mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,

      //Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 50,
            width: 100,
            color: Colors.red,
          ),
          Container(
            height: 70,
            width: 150,
            color: Colors.blue,
          ),
          Container(
            height: 90,
            width: 200,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
