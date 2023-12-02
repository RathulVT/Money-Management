import 'package:flutter/material.dart';
import 'package:untitled/Telegram_ui.dart';

class Form_home extends StatefulWidget {
  const Form_home({Key? key}) : super(key: key);

  @override
  State<Form_home> createState() => _Form_homeState();
}

class _Form_homeState extends State<Form_home> {
  GlobalKey<FormState> fKey = GlobalKey();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Form(
          key: fKey,
          child: ListView(
            children: [
              TextFormField(controller: email,
                validator: (value){
                if(value!.isEmpty){
                  return " plz enter email";
                }
                },
              ),
              TextFormField(controller: pass,
              validator: (value) {
                if(value!.isEmpty){
                  return "plz enter password";
                }
              },),

              ElevatedButton(onPressed: () {

                if( fKey.currentState!.validate()){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Telegram_u(),));

                }
              }, child: Text("Enter")),
            ],
          ),
        ),
      ),
    );
  }
}
