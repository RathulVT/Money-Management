import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listtile extends StatefulWidget {
  const Listtile({Key? key}) : super(key: key);

  @override
  State<Listtile> createState() => _ListtileState();
}

class _ListtileState extends State<Listtile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
          ListTile(
              title: Text("Name----"),
              subtitle: Text("sss@gmail.com"),
              trailing: Text("12:30"),
              leading: Container(
                height: 50,
                width: 50,
                color: Colors.red,
              )),
          ListTile(
            title: Text("Flutter"),
            subtitle: Text("Flutter.com"),
            trailing: Text("Date"),
            leading: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.freebiefindingmom.com/wp-content/uploads/2020/10/Bubble-Letter-R.jpg"),
                      fit: BoxFit.fill)),
            ),
          ),
          Container(
            height: 200,
            width: 200,

            decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://repository-images.githubusercontent.com/320664015/19dfb480-7457-11eb-8ee9-d3d4890875ae"),
                )),
            // child: Image(
            //   fit: BoxFit.contain,
            //   image: NetworkImage("https://repository-images.githubusercontent.com/320664015/19dfb480-7457-11eb-8ee9-d3d4890875ae"),
            // ),
          )
        ],
      ),
    );
  }
}
