import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Color clr = Colors.black87;
  Color clr2 = Colors.black87;
  Color clr3 = Colors.black87;
  Color clr4 = Colors.black87;
  int a = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: clr,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(height: 50, width: 50, color: clr2)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: clr3,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(height: 50, width: 50, color: clr4),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        a++;
        if (a == 1) {
          setState(() {
            clr = Colors.red;
          });
        } else if ( a == 2) {
          setState(() {
            clr = Colors.black87;
            clr2 = Colors.green;
          });
        } else if(a==3){
          setState(() {
            clr2 = Colors.black87;
            clr4 = Colors.blue;
          });
        }else if(a==4) {
          setState(() {
            clr4 = Colors.black87;
            clr3 = Colors.yellow;
          });
        }
        else {
          a = 0;
          setState(() {
            clr3 = Colors.black87;
            clr = Colors.red;
          });
        }
      }),
    );
  }
}