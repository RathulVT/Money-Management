

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ListIndex extends StatefulWidget {
  const ListIndex({Key? key}) : super(key: key);

  @override
  State<ListIndex> createState() => _ListIndexState();
}

class _ListIndexState extends State<ListIndex> {
  String id ="0";

  List<Map> details = [
    {"name": "one", "msg": "hiiii"},
    {"name": "two", "msg": "hiiii"},
    {"name": "two", "msg": "hiiii"},
    {"name": "two", "msg": "hiiii"},
    {"name": "two", "msg": "hiiii"},
    {"name": "two", "msg": "hiiii"},
  ];
   Future data()async{

     final prefe = await SharedPreferences.getInstance();
     id = prefe.getString("id")??"0";
     setState(() {

     });
}


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data();


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(id),),
      body: ListView.builder(itemCount: details.length+1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return ListTile(
              leading: CircleAvatar(),
            );
          } else {
            return ListTile(title: Text(details[index-1]["name"]));
          }
        },
      ),
    );
  }
}
