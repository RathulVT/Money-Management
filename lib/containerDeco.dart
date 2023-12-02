import 'package:flutter/material.dart';

class ContainerDecoerection extends StatelessWidget {
  const ContainerDecoerection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(left: 10),
          height: 100,
          width: 100,


          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red,
              width: 10
            ),
            color: Colors.yellow,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 5,
                    blurRadius: 5,
                   offset: Offset(-5, -5)
                ),
                BoxShadow(
                  color: Colors.green,
                  spreadRadius: 4,
                  blurRadius: 4,
                  offset: Offset(4, 4)
                )
              ]
           // borderRadius: BorderRadius.only(bottomRight: Radius.circular(22),topLeft: Radius.circular(55))
            //shape: BoxShape.circle
          ),
        ),
      )
    );
  }
}
