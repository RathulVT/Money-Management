import 'package:flutter/material.dart';

class Telegram_u extends StatefulWidget {
  const Telegram_u({Key? key}) : super(key: key);

  @override
  State<Telegram_u> createState() => _Telegram_uState();
}

class _Telegram_uState extends State<Telegram_u> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        width: 200,
        child: ListView(
          children: [
            SizedBox(
              height: 100,
              child: DrawerHeader(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green,
                  ),
                  Text("name"),
                ],
              )),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Contacts"),
            ),
            ListTile(
              leading: Icon(Icons.bookmark),
              title: Text("saved msg"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("settings"),
            ),
            ListTile(
              leading: Icon(Icons.person_add),
              title: Text("Contacts"),
            ),
          ],
        ),
      ),
      body: Center(child: ElevatedButton(onPressed: (){Navigator.pop(context);},child: Text("back"),)),
    );
  }
}
