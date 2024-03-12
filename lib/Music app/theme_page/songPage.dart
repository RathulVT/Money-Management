import 'package:flutter/material.dart';
import 'package:money_management/Music%20app/model/newbox.dart';
import 'package:money_management/Music%20app/model/playlistProvider.dart';
import 'package:provider/provider.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  // convert  duration  into min:sec
  String formatTime(Duration duration) {
    String twoDigitSeconds =
        duration.inSeconds.remainder(60).toString().padLeft(2, "0");
    String formattedTime = "${duration.inMinutes}:$twoDigitSeconds";
    return formattedTime;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PlayListProvider>(builder: (context, value, child) {
      // get playlist
      final playlist = value.playlist;

//get current index
      final currentsong = playlist[value.currentSongIndex ?? 0];

      // scaffold ui
      return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                //app bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios)),
                    const Text('PLAYLIST',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                  ],
                ),

                // album artwrok
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: NewBox(
                      child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(currentsong.albumArtImagePath)),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  currentsong.songName,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(currentsong.artistName,
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.red[800],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
                ),
                const SizedBox(
                  height: 10,
                ),

                //song duration
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // strt time
                          Text(formatTime(value.currentDuration),
                              style: const TextStyle(fontSize: 20)),
                          // shuffle
                          const Icon(Icons.shuffle),
                          //repaet
                          const Icon(Icons.repeat),
                          Text(
                            formatTime(value.totalDuration),
                            style: const TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbShape:
                        const RoundSliderThumbShape(enabledThumbRadius: 8),
                  ),
                  child: Slider(
                    min: 0,
                    max: value.totalDuration.inSeconds.toDouble(),
                    value: value.currentDuration.inSeconds.toDouble(),
                    activeColor: Colors.green,
                    onChanged: (double double) { },
                    onChangeEnd: (double double) {
                      value.seek(Duration(seconds: double.toInt()));
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: value.previousSong,
                          child: const NewBox(
                            child: Icon(Icons.skip_previous),
                          ),
                        ),
                      ),
                      const SizedBox(width: 25),
                      Expanded(
                        flex: 2,
                        child: GestureDetector(
                          onTap: value.pauseandresume,
                          child: NewBox(
                            child: Icon(value.isPlaying
                                ? Icons.pause
                                : Icons.play_arrow),
                          ),
                        ),
                      ),
                      const SizedBox(width: 25),
                      Expanded(
                        child: GestureDetector(
                          onTap: value.playNextSong,
                          child: const NewBox(
                            child: Icon(Icons.skip_next),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
