import 'package:flutter/material.dart';

class Datepickertask extends StatefulWidget {
  const Datepickertask({Key? key}) : super(key: key);

  @override
  State<Datepickertask> createState() => _DatepickertaskState();
}

class _DatepickertaskState extends State<Datepickertask> {
  var dateTime;

  datepicker() async {
    var date = await showDatePicker(
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
      context: context,
    );
    setState(() {
      dateTime = date;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  datepicker();
                },
                child: Text('Datepicker')),
            dateTime != null ? Text(dateTime.toString()) : Text(""),
          ],
        ),
      ),
    );
  }
}
