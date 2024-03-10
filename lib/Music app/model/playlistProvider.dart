import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'song.dart';

class PlayListProvider extends ChangeNotifier {
  final List<Song> _playlist = [
    //song 1
    Song(
        songName: "songName",
        artistName: "artistName",
        albumArtImagePath: "assets/images/song.jpg",
        audioPath: 'assets/audio/DeathGrips.mp3'),

    Song(
        songName: "songName",
        artistName: "artistName",
        albumArtImagePath: "assets/images/song.jpg",
        audioPath: 'assets/audio/DeathGrips.mp3'),

    Song(
        songName: "songName",
        artistName: "artistName",
        albumArtImagePath: "assets/images/song.jpg",
        audioPath: 'assets/audio/DeathGrips.mp3'),
  ];

  //current song
 int? _currentSongIndex;

  //**** Audio player *****

 // audio player
  final AudioPlayer _audioplayer = AudioPlayer();

  //duration
  Duration _currentDuration = Duration.zero;
  Duration _totalDuration = Duration.zero;

  //constructor
  PlayListProvider(){
    listenToDuration();
  }

  //initially not playing
  bool  _isPlaying = false;

  //play a song
  void play()async{
    final String path = _playlist[currentSongIndex!].audioPath;
    await _audioplayer.stop(); //stop current song
    await _audioplayer.play(AssetSource(path));// play new song
    _isPlaying = true;
    notifyListeners();
  }

  //pause current song
  void pause()async{
    await _audioplayer.pause();
    _isPlaying = true;
    notifyListeners();
  }

  //resume song
  void resume()async{
    await _audioplayer.resume();
    _isPlaying =true;
    notifyListeners();
  }

  //pause and resume
  void pauseandresume()async{
    if(_isPlaying){
      pause();
    }else{
      resume();
    }
    notifyListeners();
  }

  //seek specific duration

  void seek (Duration position)async{
    _audioplayer.seek(position);
  }

  // play next song
  void playNextSong(){
    if(_currentSongIndex != null){
      if(_currentSongIndex! < _playlist.length -1){
        // go to next song if its not the last song
        currentSongIndex = _currentSongIndex! + 1;
      }else{
        //if its last song loop back
        currentSongIndex = 0;
      }
    }
  }

  // previous song
  void previousSong()async{
    // if song pass 2 sec, restart current song
    if(_currentDuration.inSeconds > 2){
      seek(Duration.zero);
    }
    //if  its withi first 2sec of the song ,go back to previous song
    else{
      if(_currentSongIndex!>0){
        currentSongIndex =_currentSongIndex! -1;
      }
      else {
        //if its first song, loop back to last song
        currentSongIndex = _playlist.length -1;
      }
    }

  }






  //listen duration
  void listenToDuration() {
    //listen for total duration
    _audioplayer.onDurationChanged.listen((newDuration) {
      _totalDuration = newDuration;
      notifyListeners();
    });

    // listen to current duration
    _audioplayer.onPositionChanged.listen((newPosition) {
      _currentDuration = newPosition;
      notifyListeners();
    });
    //listen for song completion

    _audioplayer.onPlayerComplete.listen((event) {playNextSong();});

  }
 List<Song> get playlist => _playlist;
 int? get currentSongIndex => _currentSongIndex;
 bool get isPlaying => _isPlaying;
 Duration get currentDuration => _currentDuration;
 Duration get totalDuration => _totalDuration;


 set  currentSongIndex(int? newIndex){
   _currentSongIndex = newIndex;
   if(newIndex != null ){
     play();
   }

       notifyListeners();
 }
}
