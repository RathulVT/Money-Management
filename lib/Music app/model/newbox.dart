

import 'package:flutter/material.dart';
import 'package:money_management/Music%20app/theme_page/theme_provider.dart';
import 'package:provider/provider.dart';



class NewBox extends StatelessWidget {
  final Widget child;

  const NewBox({super.key, required this.child});


  @override
  Widget build(BuildContext context) {

    bool  isDarkMode = Provider.of<Themeprovider>(context).isdarkMode;
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).colorScheme.background,
        boxShadow: [
          BoxShadow(
            color:isDarkMode ?Colors.black: Colors.grey.shade500,
            blurRadius: 15,
            offset: const Offset(4, 4)
          ),
           BoxShadow(
              color:isDarkMode ?Colors.black54 : Colors.white,
              blurRadius: 15,
              offset: const Offset(-4, -4)
          ),
        ],
      ),
      padding: const EdgeInsets.all(12),
      child: child,
    );
  }
}

