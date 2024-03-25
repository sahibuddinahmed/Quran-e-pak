import 'dart:io';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:quran/constant/app_image.dart';
import 'package:quran/controllers/verse_in_surah_controller.dart';
import 'package:quran/holyquran.dart';
import 'package:quran/models/verse.dart';

import '../constant/hive_constant.dart';
import 'loader_View.dart';

class AyahView extends StatelessWidget {
  final number;
  final VerseInSurahController _verseInSurahController =
      Get.put(VerseInSurahController());
  AyahView({Key? key, required this.number}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    _verseInSurahController.number = number;
    _verseInSurahController.getVerseInSurah();
    _verseInSurahController.reloadDefaultTranslation();
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var menuItem = Translation.values.map(language).toList();
    return WillPopScope(
        onWillPop: () async {
          // Prevent the back button press event
          return false;
        },child: SafeArea(child: Scaffold(
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(gradient: _topBarGradient()),
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: const Icon(Icons.arrow_back_ios),
                        onTap: () {
                          // _audioPlayer.stop();
                          Get.back();
                          _verseInSurahController.translation.value =
                              Translation.NONE;
                        },
                      ),
                      PopupMenuButton<String>(
                        itemBuilder: (context) =>
                            menuItem.map(buildItem).toList(),
                        onSelected: (item) => SelectedItem(context, item),
                        initialValue: language(_verseInSurahController.translation.value),
                      )
                    ]),
              ),
            ),
            Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImage.VERSE_BACKGROUND),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(height: 20),
                        Expanded(
                          child: Container(
                            height: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(AppImage.SURAH_HEADER_V2),
                              ),
                            ),
                            child: Center(
                                child: Text(
                                  getBasmala(),
                                  style: TextStyle(
                                      fontFamily: 'Scheherazade',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 25,
                                      color: Colors.black),
                                )),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.transparent,
                            padding: EdgeInsets.only(left: 10),
                            child: Obx(() {
                              if (_verseInSurahController.isLoading.value ==
                                  false) {
                                return Container(
                                  child: ListView.builder(
                                      itemCount: _verseInSurahController
                                          .verse.value!.length,
                                      itemBuilder: (context, index) {
                                        return VerseTitle(
                                            verse: _verseInSurahController
                                                .verse.value![index]);
                                      }),
                                );
                              } else {
                                return Center(
                                  child: LoaderView(),
                                );
                              }
                            }),
                          ),
                          flex: 7,
                        ),
                        Expanded(
                          child: Container(
                            height: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(AppImage.SURAH_HEADER_V2),
                              ),
                            ),
                            child: Center(
                                child: Text(
                                  getSurahNameArabic(number),
                                  style:TextStyle(
                                      fontFamily: 'Scheherazade',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 28,
                                      color: Colors.black),
                                )),
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    ),
    );
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
              //play("https://cdn.islamic.network/quran/audio/128/ar.alafasy/${_ayat.verse_number_in_quran}.mp3")
            },
          );
        }));
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
      saveDefaultTranslation('English');
    } else if (item == 'Bengali') {
      print("Bengali Clicked");
      _verseInSurahController.changeTranslation(Translation.BENGALI);
      saveDefaultTranslation('Bengali');
    } else if (item == 'Hindi') {
      print("Hindi Clicked");
      _verseInSurahController.changeTranslation(Translation.HINDI);
      saveDefaultTranslation('Hindi');
    } else if (item == 'None') {
      print("Hindi Clicked");
      _verseInSurahController.changeTranslation(Translation.NONE);
      saveDefaultTranslation('None');
    }
  }
  void saveDefaultTranslation(String param) {
    var box = Hive.box(HiveConstant.SettingsBox);
    box.put(HiveConstant.defaultTranslation, param);
  }

  PopupMenuItem<String> buildItem(String value) {
    return PopupMenuItem(
      value: value,
      child: Text(value.toString()),
    );
  }

  LinearGradient _topBarGradient() {
    return LinearGradient(colors: [
      Color(0xFFD7AD4F),
      Color(0xFFD4C47F),
    ]);
  }
}

class VerseTitle extends StatelessWidget {
  Verse verse;
  VerseTitle({Key? key, required this.verse}) : super(key: key);
  //AudioPlayer _audioPlayer = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  @override
  Widget build(BuildContext context) {
    // _audioPlayer.onPlayerCompletion.listen((event) {
    //   print("Playing complete");
    // });
    final VerseInSurahController _controller = Get.find();
    final verseString = verse.content_arabic! +
        (Platform.isAndroid ? getVerseEndSymbol(verse.verse_number!) : "");
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
        padding: EdgeInsets.fromLTRB(width * 0.015, 5, 0, 5),
        child: Obx(() {
          return ListTile(
            title: Text(verseString,
                textAlign: TextAlign.right,
                style: TextStyle(
                     fontFamily: 'Scheherazade',
                     fontWeight: FontWeight.w600,
                    fontSize: 30,
                    color: Colors.black)),
            subtitle: (_controller.translation.value == Translation.NONE)
                ? null
                : Text(
                    verseTranslateContent(verse, _controller.translation.value),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,),
                  ),
            onTap: () => {
            // _audioPlayer.stop(),
            //   play(
            //       "https://cdn.islamic.network/quran/audio/128/ar.alafasy/${verse.verse_number_in_quran}.mp3")
            },
          );
        }));
  }

  // play(String url) async {
  //   print(url);
  //   int result = await _audioPlayer.play(url);
  //   if (result == 1) {
  //   }
  // }

  String verseTranslateContent(Verse v, Translation t) {
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
