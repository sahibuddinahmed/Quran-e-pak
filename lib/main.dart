import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:quran/models/surah.dart';
import 'package:quran/models/verse.dart';
import 'package:quran/views/app.dart';
import 'package:quran/holyquran.dart';
import 'constant/hive_constant.dart';
import 'tajweed_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.openBox(HiveConstant.SettingsBox);
  await Hive.openBox(HiveConstant.SettingsBox);
  runApp(App());
  final String text = "بِسْمِ [h:1[ٱ]للَّهِ [h:2[ٱ][l[ل]رَّحْمَ[n[ـٰ]نِ [h:3[ٱ][l[ل]رَّح[p[ِي]مِ";
  TajweedHelper.getAyahSplits(text);
  // var value = getAllVerse(1).toList();
  // value.forEach((e) {
  // var  a =  e['content_english'];
  // print(a);
  // });
  // var allsurah = AllSurah.fromJSON(getAllSurah()).allSurah!.toList();
  // allsurah.forEach((e) {
  //   print(e.english);
  // });
  //
  // var verse = VerseInSurah.fromList(getAllVerse(1)).verseInSurah!.toList();
  // verse.forEach((e) {
  //   print(e.content_bengali);
  // });
}
