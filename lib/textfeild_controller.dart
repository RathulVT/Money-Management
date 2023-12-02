import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textfieldcontroller extends StatefulWidget {
  const Textfieldcontroller({Key? key}) : super(key: key);

  @override
  State<Textfieldcontroller> createState() => _TextfieldcontrollerState();
}

class _TextfieldcontrollerState extends State<Textfieldcontroller> {
  TextEditingController textcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
          controller: textcontroller,
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        textcontroller.text = "hello world";
        print(textcontroller.text);

      }),

    );
  }
}
