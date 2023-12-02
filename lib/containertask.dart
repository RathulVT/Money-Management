

import 'package:flutter/material.dart';

class Containertask extends StatefulWidget {
  const Containertask({Key? key}) : super(key: key);

  @override
  State<Containertask> createState() => _ContainertaskState();
}

class _ContainertaskState extends State<Containertask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: 33,top: 50),
          height: 200,
          width: 200,
          padding: EdgeInsets.only(left: 50,top: 100),
          decoration: BoxDecoration(
            color: Colors.blueAccent,



            //borderRadius: BorderRadius.circular(70),

          ),
          child: Text("Container"),
        ),
      ),
    );
  }
}
