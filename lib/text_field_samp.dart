import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textfield extends StatefulWidget {
  const Textfield({Key? key}) : super(key: key);

  @override
  State<Textfield> createState() => _TextfieldState();
}

class _TextfieldState extends State<Textfield> {
  String? v;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text field'),
      ),
      body: Center(
        child: TextField(
          onChanged: (value) {
            v = value;
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        //print(int.parse(v!).isEven);

        if (int.parse(v!).isEven) {
          print("$v is even");
        } else if (int.parse(v!).isOdd) {
          print("$v is odd");
        }
      }),
    );
  }
}
