import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_management/Apimew/apiuser.dart';

void main(){
  runApp(MyApp ());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: apiuser(),
      debugShowCheckedModeBanner: false,
    );
  }
}
