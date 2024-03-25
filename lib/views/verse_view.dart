import 'dart:io';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:quran/constant/app_image.dart';
import 'package:quran/holyquran.dart';
import 'package:get/get.dart';
import 'package:quran/controllers/verse_in_surah_controller.dart';
import 'package:quran/models/verse.dart';
import 'package:quran/utils/constant.dart';
import 'loader_View.dart';

class VerseView extends StatelessWidget {
  final number;
  VerseView({Key? key, required this.number}) : super(key: key);
  final VerseInSurahController _verseInSurahController =
      Get.put(VerseInSurahController());
  AudioPlayer _audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);
  @override
  Widget build(BuildContext context) {
    var menuItem = Translation.values.map(language).toList();
    _verseInSurahController.number = number;
    _verseInSurahController.getVerseInSurah();
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          actions: [
            PopupMenuButton<String>(
              itemBuilder: (context) => menuItem.map(buildItem).toList(),
              onSelected: (item) => SelectedItem(context, item),
              initialValue: 'None',
            )
          ],
          title: Text(Constant.title),
          leading: GestureDetector(
            child: const Icon(Icons.arrow_back),
            onTap: () {
              // _audioPlayer.stop();
              Get.back();
              _verseInSurahController.translation.value = Translation.NONE;
            },
          )),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image(
                  image: AssetImage(AppImage.SURAH_HEADER),
                  fit: BoxFit.fill,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          getSurahName(number),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w800),
                        ),
                      ),
                      flex: 3,
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.red,
                        child: Text(
                          getSurahNameArabic(number),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800),
                        ),
                      ),
                      flex: 4,
                    ),
                    Expanded(
                      child: Container(
                        //color: Colors.blue,
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          convertToArabicNumber(number),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w800),
                        ),
                      ),
                      flex: 3,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Text(
                getBasmala(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
                child: Container(
              color: Colors.white,
              child: Obx(() {
                if (_verseInSurahController.isLoading.value == false) {
                  return ListView.builder(
                      itemCount: _verseInSurahController.verse.value!.length,
                      itemBuilder: (context, index) {
                        return buildTitle(
                            _verseInSurahController.verse.value![index],
                            height,
                            width);
                        // return VerseTitle(verse: _verseInSurahController.verse.value![index]);
                      });
                } else {
                  return Center(
                    child: LoaderView(),
                  );
                }
              }),
            ))
          ],
        ),
      ),
    );
  }

  String language(Translation t) {
    switch (t) {
      case Translation.BENGALI:
        return 'Bengali';
      case Translation.ENGLISH:
        return 'English';
      case Translation.HINDI:
        return 'Hindi';
      case Translation.NONE:
        return 'None';
    }
  }

  void SelectedItem(BuildContext context, String item) {
    if (item == 'English') {
      print("English Clicked");
      _verseInSurahController.changeTranslation(Translation.ENGLISH);
    } else if (item == 'Bengali') {
      print("Bengali Clicked");
      _verseInSurahController.changeTranslation(Translation.BENGALI);
    } else if (item == 'Hindi') {
      print("Hindi Clicked");
      _verseInSurahController.changeTranslation(Translation.HINDI);
    } else if (item == 'None') {
      print("Hindi Clicked");
      _verseInSurahController.changeTranslation(Translation.NONE);
    }
  }

  Widget buildTitle(Verse _ayat, double height, double width) {
    final verseString = _ayat.content_arabic! +
        (Platform.isAndroid ? getVerseEndSymbol(_ayat.verse_number!) : "");
    return Padding(
        padding: EdgeInsets.fromLTRB(width * 0.015, 10, 10, 10),
        child: Obx(() {
          return ListTile(
            title: Text(verseString,
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.black)),
            subtitle:
                (_verseInSurahController.translation.value == Translation.NONE)
                    ? null
                    : Text(
                        verseContent(
                            _ayat, _verseInSurahController.translation.value),
                        textAlign: TextAlign.left,
                      ),
            onTap: () => {
              play(
                  "https://cdn.islamic.network/quran/audio/128/ar.alafasy/${_ayat.verse_number_in_quran}.mp3")
            },
          );
        }));
  }

  play(String url) async {
    print(url);
    _audioPlayer.stop();
    int result = await _audioPlayer.play(url);
    if (result == 1) {}
  }

  PopupMenuItem<String> buildItem(String value) {
    return PopupMenuItem(
      value: value,
      child: Text(value.toString()),
    );
  }

  String verseContent(Verse v, Translation t) {
    if (t == Translation.ENGLISH) {
      print("English Clicked");
      return v.content_english ?? "";
    } else if (t == Translation.BENGALI) {
      print("Bengali Clicked");
      return v.content_bengali ?? "";
    } else if (t == Translation.HINDI) {
      print("Hindi Clicked");
      return v.content_hindi ?? "";
    } else {
      return v.content_arabic ?? "";
    }
  }
}
