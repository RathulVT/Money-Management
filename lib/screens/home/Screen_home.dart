import 'package:flutter/material.dart';
import 'package:money_management/screens/category/screen_Category.dart';
import 'package:money_management/screens/home/Money_M_bottomNavigation.dart';
import 'package:money_management/screens/transactions/screen_transaction.dart';


class Screen_Home extends StatefulWidget {
  const Screen_Home({Key? key}) : super(key: key);


  @override
  State<Screen_Home> createState() => _Screen_HomeState();
}

class _Screen_HomeState extends State<Screen_Home> {

  final pages = const [Screen_trans(), Screen_category()];


  PageController Pgecntrl  = PageController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: Money_Mgt_BottomNavigation(),


    );
  }
}

