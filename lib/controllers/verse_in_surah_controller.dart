import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:quran/holyquran.dart';
import 'package:quran/models/verse.dart';

import '../constant/hive_constant.dart';
class VerseInSurahController extends GetxController
{
  var number;
  var verse = VerseInSurah().verseInSurah.obs;
  var isLoading = true.obs;
  var translation = Translation.NONE.obs;

  void getVerseInSurah(){
    isLoading.value = false;
    verse.value = VerseInSurah.fromList(getAllVerse(number)).verseInSurah!.toList();
  }
  void changeTranslation(Translation t){
    translation.value = t;
  }
  void setDefaultTranslation(String item) {
    if (item == 'English') {
      print("English Clicked");
      changeTranslation(Translation.ENGLISH);
    } else if (item == 'Bengali') {
      print("Bengali Clicked");
     changeTranslation(Translation.BENGALI);
    } else if (item == 'Hindi') {
      print("Hindi Clicked");
      changeTranslation(Translation.HINDI);
    } else if (item == 'None') {
      print("Hindi Clicked");
     changeTranslation(Translation.NONE);
    }
  }
  void reloadDefaultTranslation() {
    var box = Hive.box(HiveConstant.SettingsBox);
    var defaultTranslationValue = box.get(HiveConstant.defaultTranslation);
    if (defaultTranslationValue == null) {
      log("Null");
      setDefaultTranslation('None');
    } else {
      setDefaultTranslation(defaultTranslationValue);
    }
  }
  translate(Translation t) => translation.value = t;
 @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
 @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    var box = Hive.box(HiveConstant.SettingsBox);
    var defaultTranslationValue = box.get(HiveConstant.defaultTranslation);
    if (defaultTranslationValue == null) {
      log("Null");
      setDefaultTranslation('None');
    } else {
      setDefaultTranslation(defaultTranslationValue);
    }
    //log(defaultTranslation);
  }
}