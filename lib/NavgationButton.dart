import 'package:flutter/material.dart';
import 'package:untitled/Telegram_ui.dart';

class NavugationBotton extends StatefulWidget {
  const NavugationBotton({Key? key}) : super(key: key);

  @override
  State<NavugationBotton> createState() => _NavugationBottonState();
}

class _NavugationBottonState extends State<NavugationBotton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Center(
        child: ElevatedButton(child: Text("Next page"),onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context )=> Telegram_u())  );
        }),
      ),
    );
  }
}
