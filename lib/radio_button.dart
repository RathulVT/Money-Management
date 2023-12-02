import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({Key? key}) : super(key: key);

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  String Gender = "male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Form(
          child: ListView(
            children: [
              TextFormField(),
              TextFormField(),
              ElevatedButton(onPressed: () {}, child: Text("Log In")),
              RadioListTile(
                  value: "male",
                  groupValue: Gender,
                  onChanged: (value) {
                    setState(() {
                      Gender = value!;
                    });
                  },title: Text("male"),),
              RadioListTile(
                  value: "female",
                  groupValue: Gender,
                  onChanged: (value) {
                    setState(() {
                      Gender = value!;
                    });
                  },title: Text("female"),),
              RadioListTile(
                  value: "other",
                  groupValue: Gender,
                  onChanged: (value) {
                    setState(() {
                      Gender = value!;
                    });
                  },title: Text("other"),)
            ],
          ),
        ),
      ),
    );
  }
}
