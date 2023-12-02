import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textfieldtask extends StatefulWidget {
  const Textfieldtask({Key? key}) : super(key: key);

  @override
  State<Textfieldtask> createState() => _TextfieldtaskState();
}

class _TextfieldtaskState extends State<Textfieldtask> {
  int? a;
  int? b;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("text field"),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value1) {
              //a = value1;
             a=  int.parse(value1);
            },
          ),
          TextField(
            onChanged: (value2) {
             // b = value2;
            b =  int.parse(value2);
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {


        print( b! + a!);
      }),
    );
  }
}
