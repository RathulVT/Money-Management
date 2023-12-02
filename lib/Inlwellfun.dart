import 'package:flutter/material.dart';

class Inkwellfun extends StatefulWidget {
  const Inkwellfun({Key? key}) : super(key: key);

  @override
  State<Inkwellfun> createState() => _InkwellfunState();
}

class _InkwellfunState extends State<Inkwellfun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(leading: PopupMenuButton(itemBuilder: (BuildContext context) =>[
         PopupMenuItem(child: Text('axax')),
         PopupMenuItem(child: Text('wwww')),
         PopupMenuItem(child: Text('eeee')),


      ],),),

      body: InkWell(
        onTap: (){
           print("object");
        },
        child: Center(
          child: Container(
            height: 20,width: 20,
            child: Text("jkjkljklkl"),
          ),
        ),
      ),
    );
  }
}
