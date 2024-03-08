import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'model.dart';

class apiuser extends StatelessWidget {
   apiuser({Key? key}) : super(key: key);


  Future<User> getData() async {
    Response response =
       await get(Uri.parse("https://randomuser.me/api/?results=10#"));



    if (response.statusCode == 200) {
       return User.fromJson(jsonDecode(response.body));


    }else{
      throw Exception('Failed to Load User');
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }if(
            snapshot.hasData
            ){
              return ListView.builder(itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(color: Colors.grey,
                    child: ListTile(
                     leading: ClipRRect(borderRadius: BorderRadius.circular(90),child: Image.network(snapshot.data!.results[index].picture.thumbnail)),
                      title: Text(snapshot.data!.results[index].name.first),
                      subtitle: Text(snapshot.data!.results[index].email),
                    ),
                  ),
                );

              },itemCount: snapshot.data!.results.length,);
            }
            return Text("No Data");
          },
        ),
      ),
    );
  }
}
