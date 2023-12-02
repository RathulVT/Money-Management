import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listviewtask extends StatefulWidget {
  const Listviewtask({Key? key}) : super(key: key);

  @override
  State<Listviewtask> createState() => _ListviewtaskState();
}

class _ListviewtaskState extends State<Listviewtask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                height: 100,
                width: 200,
                color: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width/1.9,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(

                      children: [
                        Container(
                          height: 50,
                          width: 100,
                          color: Colors.cyanAccent,
                        ),
                        Container(
                          height: 50,
                          width: 200,
                          color: Colors.purple,
                        ),
                        Container(
                          height: 50,
                          width: 300,
                          color: Colors.yellow,
                        ),
                        Container(
                          height: 50,
                          width: 400,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),


              Container(
                height: 100,
                width: 500,
                color: CupertinoColors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
