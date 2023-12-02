import 'package:flutter/material.dart';

class ListviewBuilder extends StatefulWidget {
  const ListviewBuilder({Key? key}) : super(key: key);

  @override
  State<ListviewBuilder> createState() => _ListviewBuilderState();
}

class _ListviewBuilderState extends State<ListviewBuilder> {
  List weeks = [
    "monday",
    "tuesday",
    "wensaday",
    "thursday",
    "friday",
    "saturday"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: weeks.length,
            itemBuilder: (context, index) {
              return Text(weeks[index]);
            }),
      ),
    );
  }
}
