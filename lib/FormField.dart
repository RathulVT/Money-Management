import 'package:flutter/material.dart';
import 'package:untitled/SavedPage.dart';

class DataloginPage extends StatefulWidget {
  const DataloginPage({Key? key}) : super(key: key);

  @override
  State<DataloginPage> createState() => _DataloginPageState();
}

class _DataloginPageState extends State<DataloginPage> {
  GlobalKey<FormState> fKey = GlobalKey();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController number = TextEditingController();

  String Gender = "male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Center(
        child: Form(
            key: fKey,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),

                    labelText: "Enter Name"),
                    controller: name,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "enter Name";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    labelText: "Enter Email"),
                    controller: email,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "enter email";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                   labelText: "Enter Phone Number" ),
                    controller: number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "enter number";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(),
                RadioListTile(
                  value: "male",
                  groupValue: Gender,
                  onChanged: (value) {
                    setState((){
                      Gender = value!;

                    });
                  },
                  title: Text("male"),
                ),
                RadioListTile(
                    value: "female", groupValue: Gender, onChanged: (value) {
                      setState((){
                       Gender = value!;

                      });
                },title: Text("female"),),
                RadioListTile(
                    value: "other", groupValue: Gender, onChanged: (value) {
                  setState((){
                    Gender = value!;

                  });
                },title: Text("other"),),
                SizedBox(),
                ElevatedButton(
                    onPressed: () {
                      if (fKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SavedPage()));
                      }
                    },
                    child: Text("Save data")),
              ],
            )),
      ),
    );
  }
}
