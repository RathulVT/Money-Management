import 'package:flutter/material.dart';

class Whatsapppage extends StatefulWidget {
  const Whatsapppage({Key? key}) : super(key: key);

  @override
  State<Whatsapppage> createState() => _WhatsapppageState();
}

class _WhatsapppageState extends State<Whatsapppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message_outlined),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
            color: Colors.white,
          ),
        ],
      ),
      body: ListView(scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Container(
                height: 50,
                color: Colors.green[600],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'CALLS',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'CHATS',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'STATUS',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              ListTile(
                title: Text("Name----"),
                subtitle: Text("sss@gmail.com"),
                trailing: Text("12:30"),
                leading: Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
              ),
              ListTile(
                title: Text("Name----"),
                subtitle: Text("sss@gmail.com"),
                trailing: Text("12:30"),
                leading: Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
              ),
              ListTile(
                title: Text("Name----"),
                subtitle: Text("sss@gmail.com"),
                trailing: Text("12:30"),
                leading: Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
              ),
              ListTile(
                title: Text("Name----"),
                subtitle: Text("sss@gmail.com"),
                trailing: Text("12:30"),
                leading: Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
