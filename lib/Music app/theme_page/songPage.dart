import 'package:flutter/material.dart';
import 'package:money_management/Music%20app/components/newbox.dart';
import 'package:provider/provider.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                //app bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back_ios)),
                    const Text('PLAYLIST'),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                  ],
                ),

                // album artwrok
                NewBox(
                    child: Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset("assets/images/albumimage")),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          children: [
                            Text(
                              "Song Name",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text("artist name"),
                          ],
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red[800],
                        ),
                      ],
                    ),
                  ],
                )),
                const SizedBox(
                  height: 10,
                ),

                //song duration
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      // strt time
                      Text("0.00sec"),
                      // shuffle
                      Icon(Icons.shuffle),
                      //repaet
                      Icon(Icons.repeat),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
