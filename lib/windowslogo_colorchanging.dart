import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WindowsColorchanging extends StatefulWidget {
  const WindowsColorchanging({Key? key}) : super(key: key);

  @override
  State<WindowsColorchanging> createState() => _WindowsColorchangingState();
}

class _WindowsColorchangingState extends State<WindowsColorchanging> {
  Color clr = Colors.black;
  int a = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: clr,
                height: 50,
                width: 50,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: clr,
                height: 50,
                width: 50,
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.blue,
                height: 50,
                width: 50,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.black,
                height: 50,
                width: 50,
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          a++;
          if(a == 1){
            setState(() {
              clr = Colors.red;
            });
          }else if(a == 2){
            clr = Colors.red;
          }
        },
      ),
    );
  }
}
