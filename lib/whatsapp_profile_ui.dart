import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Profile_Ui extends StatefulWidget {
  const Profile_Ui({Key? key}) : super(key: key);

  @override
  State<Profile_Ui> createState() => _Profile_UiState();
}

class _Profile_UiState extends State<Profile_Ui> {

  File? profileimg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: Text("profile"),
      ),
      body: Container(color: Colors.grey,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              InkWell(
                onTap: () async{var img = await ImagePicker().pickImage(source: ImageSource.gallery);
                  setState(() {
                    profileimg = File(img!.path);


                  });},


                child: profileimg == null? CircleAvatar(radius: 100,): CircleAvatar(
                  backgroundColor: Colors.cyan,
                  radius: 100,
                  backgroundImage: FileImage(File(profileimg!.path))  //profileimg == null?  Text("No Image"): Image(image: FileImage(profileimg!),),
                ),
              ),
            ]),
            Expanded(
              child: Column(
                children: [
                  InkWell(onTap: ()  {
                  },
                    child: SizedBox(
                        height: 60,
                        child: ListTile(
                          leading: Icon(Icons.person),
                          title: Text("Name"),
                          subtitle: Text(""),
                          trailing: Icon(Icons.edit),
                        )),
                  ),
                  InkWell( onTap: (){ },
                    child:SizedBox(
                        height: 60,
                        child: ListTile(
                          leading: Icon(Icons.circle_notifications_sharp),
                          title: Text("About"),
                          subtitle: Text(""),
                          trailing: Icon(Icons.edit),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
