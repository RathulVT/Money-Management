
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  const Listview({Key? key}) : super(key: key);

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(

      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
           // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(height: 100,width: 100,
              color: Colors.blueAccent,),
              Container(height: 200,width: 100,color: Colors.red,),
              Container(height: 300,width: 100,color: Colors.green,),
              Container(height: 400,width: 100,color: Colors.yellowAccent,),
            ],
          ),
        ],
      ),
    );
  }
}
