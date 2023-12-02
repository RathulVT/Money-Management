import 'package:flutter/material.dart';

class Gridview extends StatefulWidget {
  const Gridview({Key? key}) : super(key: key);

  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: GridView(
        //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 2,
        //       childAspectRatio: 4 / 5,
        //       crossAxisSpacing: 10,
        //       mainAxisSpacing: 10,
        //     ),
        //     children: [
        //       Container(
        //         color: Colors.green,
        //       ),
        //       Container(
        //         color: Colors.red,
        //       ),
        //       Container(
        //         color: Colors.yellow,
        //       ),
        //       Container(
        //         color: Colors.blue,
        //       ),
        //     ]),

        body: Container(
          child: GridView.builder(
      gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5,mainAxisSpacing: 5,crossAxisSpacing: 3),
      itemCount: 10,
      itemBuilder: (context, index) {
          return Container(color: Colors.red,);

      },
    ),
        ));
  }
}
