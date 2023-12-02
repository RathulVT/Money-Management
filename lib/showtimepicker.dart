import 'package:flutter/material.dart';

class Showtimepickertask extends StatefulWidget {
  const Showtimepickertask({Key? key}) : super(key: key);

  @override
  State<Showtimepickertask> createState() => _ShowtimepickertaskState();
}

class _ShowtimepickertaskState extends State<Showtimepickertask> {

  var times;

  showtime() async {

   var time = await showTimePicker(context: context, initialTime: TimeOfDay.now());

   setState(() {
     times = time;
   });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center ,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {showtime();},
              child: Text("showTime"),
            ),
          ),
          times != null ? Text(times.toString()): Text(""),
        ],
      ),
    );
  }
}
