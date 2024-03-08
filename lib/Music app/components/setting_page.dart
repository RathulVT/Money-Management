import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_management/Music%20app/theme_page/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('SETTINGS'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('DARK MODE'),
            CupertinoSwitch(
              value:
                  Provider.of<Themeprovider>(context, listen: false).isdarkMode,
              onChanged: (value) {
                Provider.of<Themeprovider>(context, listen: false)
                    .toggleTheme();
              },
            )
          ],
        ),
      ),
    );
  }
}
