import 'package:flutter/material.dart';

class Textfieldtasak2 extends StatefulWidget {
  const Textfieldtasak2({Key? key}) : super(key: key);

  @override
  State<Textfieldtasak2> createState() => _Textfieldtasak2State();
}

class _Textfieldtasak2State extends State<Textfieldtasak2> {
  int? a;
  var b=82.40;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextField(
          onChanged: (value){
            a = int.parse(value);
            if(a==0){
              print(0);
            }else {
              print(a! * b);
            }
            },
        ),
      ),
    );
  }
}
