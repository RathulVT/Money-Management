import 'package:flutter/material.dart';
import 'package:money_management/screens/category/screen_Category.dart';
import 'package:money_management/screens/home/Money_M_bottomNavigation.dart';
import 'package:money_management/screens/transactions/screen_transaction.dart';

class Screen_home extends StatelessWidget {
  Screen_home({
    Key? key,
  }) : super(key: key);

  static ValueNotifier<int> selectedIndexNotifer = ValueNotifier(0);
  final pages = const [Screen_trans(), Screen_category()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const Money_Mgt_BottomNavigation(),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: selectedIndexNotifer,
          builder: (BuildContext context, int updatedIndex, _) {
            return pages[updatedIndex];
          },
        ),
      ),
    );
  }
}
