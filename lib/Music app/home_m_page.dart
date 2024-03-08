import 'package:flutter/material.dart';
import 'package:money_management/Music%20app/components/drawer_page.dart';
import 'package:money_management/Music%20app/theme_page/songPage.dart';

import 'package:provider/provider.dart';


import 'model/playlistProvider.dart';
import 'model/song.dart';

class HomaMpage extends StatefulWidget {
  const HomaMpage({Key? key}) : super(key: key);

  @override
  State<HomaMpage> createState() => _HomaMpageState();
}

class _HomaMpageState extends State<HomaMpage> {
  // get playlist provider
  late final  dynamic playlistprovider;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    playlistprovider = Provider.of<PlayListProvider>(context, listen: false);
  }
  void goTosong (int songIndex){
    playlistprovider.currentSongIndex;

    Navigator.push(context, MaterialPageRoute(builder: (context) => SongPage(),));

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('PLAYLIST'),
      ),
      drawer: const DrawerPage(),
      body: Consumer<PlayListProvider>(
        builder: (context, value, child) {

          final List<Song>playlist =value.playlist;


          return ListView.builder(itemCount: playlist.length,itemBuilder: (context, index) {
            final Song song = playlist[index];
            return ListTile(
              title: Text(song.songName),
              subtitle: Text(song.artistName),
              leading: Image.asset(song.albumArtImagePath),
              onTap: ()=> goTosong(index),
            );

          },);
        },
      ),
    );

  }
}
