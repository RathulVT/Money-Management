import 'package:flutter/material.dart';
import 'package:money_management/Music%20app/model/playlistProvider.dart';
import 'package:money_management/Music%20app/theme_page/theme_provider.dart';
import 'package:provider/provider.dart';

import 'home_m_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Themeprovider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PlayListProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<Themeprovider>(context).themeData,
      home: const HomaMpage(),
    );
  }
}
