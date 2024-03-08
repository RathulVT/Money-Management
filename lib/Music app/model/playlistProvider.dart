import 'package:flutter/material.dart';

import 'song.dart';

class PlayListProvider extends ChangeNotifier {
  final List<Song> _playlist = [
    //song 1
    Song(
        songName: "songName",
        artistName: "artistName",
        albumArtImagePath: "assets/images/imageName.png",
        audioPath: "assets/songName.mp3"),

    Song(
        songName: "songName",
        artistName: "artistName",
        albumArtImagePath: "assets/images/imageName.png",
        audioPath: "assets/songName.mp3"),

    Song(
        songName: "songName",
        artistName: "artistName",
        albumArtImagePath: "assets/images/imageName.png",
        audioPath: "assets/songName.mp3"),
  ];

  //current song
 int? _currentSongIndex;

 List<Song> get playlist => _playlist;
 int? get currentSongIndex => _currentSongIndex;


 set  currentSongIndex(int? newIndex){
   _currentSongIndex = newIndex;

       notifyListeners();
 }
}
