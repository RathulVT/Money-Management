import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Imagepicker_task extends StatefulWidget {
  const Imagepicker_task({Key? key}) : super(key: key);

  @override
  State<Imagepicker_task> createState() => _Imagepicker_taskState();
}

class _Imagepicker_taskState extends State<Imagepicker_task> {
  File? uploadimage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            
            Center(
              child: uploadimage == null?  Text("No Image"): Image(image: FileImage(uploadimage!),),
            )
            ,ElevatedButton(
                onPressed: () async {
                  var img = await ImagePicker().pickImage(source: ImageSource.gallery);
                  setState(() {
                     uploadimage = File(img!.path);
                  });
                },
                child: Text("imagepicker")),
          ],
        ),
      ),
    );
  }
}
