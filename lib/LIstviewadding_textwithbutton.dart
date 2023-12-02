import 'package:flutter/material.dart';

class Listview_ButtonTextadding extends StatefulWidget {
  const Listview_ButtonTextadding({Key? key}) : super(key: key);

  @override
  State<Listview_ButtonTextadding> createState() => _Listview_ButtonTextaddingState();
}

class _Listview_ButtonTextaddingState extends State<Listview_ButtonTextadding> {

  TextEditingController id = TextEditingController();
  TextEditingController name = TextEditingController();
  List data = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: id ,
          ),

          TextField(controller: name),
          SizedBox(height: 10,),
          FloatingActionButton(onPressed: (){
            setState(() {
              data.add({"id":id.text,"name":name.text});

            });

          }),
          Expanded(
            child: ListView.builder(itemCount: data.length,
              itemBuilder: (context,index) {
                return ListTile(
                  title: Text(data[index]["id"]),
                  subtitle: Text(data[index]["name"]),
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}
