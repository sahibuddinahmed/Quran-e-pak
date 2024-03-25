import 'dart:developer';
import 'dart:typed_data';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/utils.dart';
import 'package:quran/holyquran.dart';
import 'package:get/get.dart';

class AlphabetView extends StatefulWidget {
  const AlphabetView({Key? key}) : super(key: key);

  @override
  State<AlphabetView> createState() => _AlphabetViewState();
}

class _AlphabetViewState extends State<AlphabetView> {
  AudioCache audioCache = new AudioCache();
  AudioPlayer advancedPlayer = new AudioPlayer();
  late String localFilePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Aphabet"),
          leading: GestureDetector(
            child: const Icon(Icons.arrow_back),
            onTap: () {
              Get.back();
            },
          )),
      body: Directionality(textDirection: TextDirection.rtl,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemCount: getAllAlphabets().length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.amber,
              child: new InkResponse(
                child: Center(child: Text(getAllAlphabets()[index],style: TextStyle(fontSize: 55),)),
                onTap: (){
                  playAudio(index);
                },
              ),

            );
          }
      ),),
    );

  }
  Future<void> playAudio(int position) async {

    var name = getAlphabetNameFromPosition(position) + ".mp3";
    String audioasset = "assets/sounds/$name";
    log(audioasset);
    ByteData bytes = await rootBundle.load(audioasset); //load audio from assets
    Uint8List audiobytes = bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
    int result = await advancedPlayer.playBytes(audiobytes);
    if(result == 1){ //play success
      print("audio is playing.");
    }else{
      print("Error while playing audio.");
    }

    // var name = getAlphabetNameFromPosition(position) + ".mp3";
    // String audioasset = "assets/sounds/$name";
    // AssetsAudioPlayer.newPlayer().open(
    //   Audio(audioasset),
    //   autoStart: true,
    //   showNotification: true,
    // );
    // var res = await advancedPlayer.play(audioasset, isLocal: true);
    // if(res == 1){ //play success
    //   print("audio is playing.");
    // }else {
    //   print("Error while playing audio.");
    // }
  }

  bool isPlaying = false;
  bool isPaused = false;

  void playHandler(int position) async {
    if (isPlaying) {
      advancedPlayer.stop();
    } else {
      advancedPlayer = await audioCache.play('audio/Michael Jackson - Billie Jean.mp3');
    }

    setState(() {
      if (isPaused) {
        isPlaying = false;
        isPaused = false;
      } else {
        isPlaying = !isPlaying;
      }
    });
  }
}

