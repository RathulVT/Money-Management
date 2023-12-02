import 'package:flutter/material.dart';

class Sep_BottomNavigation extends StatefulWidget {
  const Sep_BottomNavigation({Key? key}) : super(key: key);

  @override
  State<Sep_BottomNavigation> createState() => _Sep_BottomNavigationState();
}

class _Sep_BottomNavigationState extends State<Sep_BottomNavigation> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [],
      ),
      bottomNavigationBar: BottomNavigation_Sep(
          icon: Icons.home, icon2: Icons.person, title: "Home", title2: "profile"),
    );
  }
}

class BottomNavigation_Sep extends StatelessWidget {
  final IconData icon;
  final IconData icon2;
  final String title;
  final String title2;
  final void Function(int)? onTap;

  const BottomNavigation_Sep(
      {Key? key,
      required this.icon,
      required this.icon2,
      required this.title,
      this.onTap,
      required this.title2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      items: [
        BottomNavigationBarItem(icon: Icon(icon), label: title),
        BottomNavigationBarItem(icon: Icon(icon2), label: title2),
      ],
    );
  }
}
