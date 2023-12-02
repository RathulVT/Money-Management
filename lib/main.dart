



import 'package:flutter/material.dart';
import 'package:untitled/BottomNavigation_PageView.dart';
import 'package:untitled/radio_button.dart';
import 'package:untitled/shared_preferences.dart';
import 'package:untitled/showtimepicker.dart';
import 'package:untitled/webview/Mapwebview.dart';
import 'package:untitled/webview/Webview.dart';
import 'package:untitled/webview/geolocator.dart';
import 'package:untitled/whatsapp_frontpage.dart';
import 'package:untitled/whatsapp_profile_ui.dart';


import 'API/Api_product.dart';
import 'API/Api_task.dart';
import 'API/PostAPi.dart';
import 'API/PostTask.dart';
import 'API/SImpleApi.dart';
import 'BottomNavigation/BottomNavigation_List.dart';
import 'BottomNavigation_Sep_Frm_MainPage.dart';
import 'DatePicker.dart';
import 'FormField.dart';
import 'Gmail/Gmailpage.dart';
import 'Gridview.dart';
import 'Imagepicker.dart';
import 'LIstviewadding_textwithbutton.dart';
import 'LIstviewofMap.dart';
import 'ListviewBuilder_task.dart';
import 'NEwlogin/LoginPage_task.dart';
import 'NavgationButton.dart';
import 'Telegram_Ui/Telegram_ui.dart';
import 'Telegram_ui.dart';
import 'dependencies_samp.dart';
import 'drawer.dart';
import 'Inlwellfun.dart';
import 'form.dart';
// import 'package:untitled/windowscolor_changing_task.dart';
//
// import 'appbar.dart';
// import 'containerDeco.dart';
// import 'listTile.dart';
// import 'listview.dart';
// import 'listviewTask.dart';
import 'Listviewbuilder.dart';
import 'fururebuilder/FutureBuilder_tak.dart';
import 'homepage.dart';
import 'listview_index_builder.dart';




void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true

      ),

      home: BottomNavigation_List (),

    );
  }
}











// import 'package:flutter/material.dart';
// import 'package:untitled/windowscolor_changing_task.dart';
//
//
//
// import 'column.dart';
// import 'text_field_samp.dart';
// import 'textfeild_controller.dart';
// import 'textfielf_task2.dart';
// import 'windows_logo.dart';
// import 'windowslogo_colorchanging.dart';
//
//
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//         useMaterial3: true
//
//       ),
//
//       home: Homescreen(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
//
//
