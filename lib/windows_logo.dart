import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Windowslogo extends StatefulWidget {
  const Windowslogo({Key? key}) : super(key: key);

  @override
  State<Windowslogo> createState() => _WindowslogoState();
}

class _WindowslogoState extends State<Windowslogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                ),
                SizedBox(height: 10,),
                Container(
                  color: Colors.green,
                  height: 50,
                  width: 50,
                ),
              ],
            ),
            SizedBox(width: 10,),
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.blue,
                  height: 50,
                  width: 50,
                ),
                SizedBox(height: 10,),
                Container(
                  color: Colors.black,
                  height: 50,
                  width: 50,
                ),
              ],
            ),
          ],
        ),

        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Container(
        //             height: 50,
        //             width: 50,
        //             color: Colors.red,
        //           ),
        //           SizedBox(width: 10,),
        //           Container(
        //             height: 50,
        //             width: 60,
        //             color: Colors.green,
        //           ),
        //         ],
        //       ),
        //       SizedBox(height: 10,),
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Container(
        //             height: 50,
        //             width: 50,
        //             color: Colors.black,
        //           ),
        //           SizedBox(width: 10,),
        //           Container(
        //             height: 50,
        //             width: 60,
        //             color: Colors.grey,
        //           ),
        //         ],
        //       )
        //     ],
        //   ),
      ),
    );
  }
}
