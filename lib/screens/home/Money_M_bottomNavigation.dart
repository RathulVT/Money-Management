import 'package:flutter/material.dart';
import 'package:money_management/screens/home/Screen_home.dart';

class Money_Mgt_BottomNavigation extends StatelessWidget {
  const Money_Mgt_BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Screen_home.selectedIndexNotifer,
      builder: (BuildContext context, int updatedIndex, Widget? _) {
        return BottomNavigationBar(
          currentIndex: updatedIndex,
          onTap: (newIndex ) {
            Screen_home.selectedIndexNotifer = newIndex ;
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Transactions"),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: "Category"),
          ],
        );
      },
    );
  }
}
