import 'package:flutter/material.dart';

import '../category/screen_Category.dart';
import '../transactions/screen_transaction.dart';

class Money_Mgt_BottomNavigation extends StatefulWidget {


   Money_Mgt_BottomNavigation();

  @override
  State<Money_Mgt_BottomNavigation> createState() =>
      _Money_Mgt_BottomNavigationState();
}

class _Money_Mgt_BottomNavigationState
    extends State<Money_Mgt_BottomNavigation> {
  int selectedindex = 0;
  final PageController pagecontroller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.black, blurRadius: 20)]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            unselectedItemColor: Colors.lime,
            type: BottomNavigationBarType.shifting,
            elevation: 10.0,
            selectedItemColor: Colors.red,
            currentIndex: selectedindex,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.transfer_within_a_station),
                  label: "Transfer",
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category),
                  label: "Category",
                  backgroundColor: Colors.green),
            ],
            onTap: onTapped,
          ),
        ),
      ),
      body: PageView(
        controller: pagecontroller,
        onPageChanged: (index) {
          setState(() {
            selectedindex = index;
          });
        },
        children: const [
          Screen_category(),
          Screen_trans(),
        ],
      ),
    );
  }

  void onTapped(index) {
    setState(() {
      selectedindex = index;
    });
    pagecontroller.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
  }
}
