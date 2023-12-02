import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'listview_index_builder.dart';

class Sharedpreferences_task extends StatefulWidget {
  const Sharedpreferences_task({Key? key}) : super(key: key);

  @override
  State<Sharedpreferences_task> createState() => _Sharedpreferences_taskState();
}

class _Sharedpreferences_taskState extends State<Sharedpreferences_task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:  Column(
        children: [
          ElevatedButton(onPressed: ()async{
            SharedPreferences prefe = await SharedPreferences.getInstance();
            prefe.setString("id", "1001");
            Navigator.push(context, MaterialPageRoute(builder: (context) => ListIndex(),));
      }, child: Text("save")),
        ],
      ),),
    );
  }
}
