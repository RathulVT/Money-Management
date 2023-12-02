import 'package:flutter/material.dart';

class Listbuildersamp extends StatefulWidget {
  const Listbuildersamp({Key? key}) : super(key: key);

  @override
  State<Listbuildersamp> createState() => _ListbuildersampState();
}

class _ListbuildersampState extends State<Listbuildersamp> {

  List pa =[ "aa","assas","adasdsd","ajsa","hagsua","ASWEF","aa","assas","adasdsd","ajsa",];
  List pAa =[ "aa","assas","adasdsd","ajsa","hagsua","ASWEF","aa","assas","adasdsd","ajsa",];


  @override
  Widget build(BuildContext context) {
    return Scaffold(




      body: ListView.separated(itemBuilder: (BuildContext context,int index,) {
        return ListTile(leading: CircleAvatar(child: Text(pAa[index]),),title: Text(pa[index]),);
      },
      itemCount: 10, separatorBuilder: (BuildContext context, int index) {
       return  Divider(color: Colors.green,);
        },) ,
    );
  }
}
