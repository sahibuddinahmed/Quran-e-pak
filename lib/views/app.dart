import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/utils/constant.dart';
import 'package:quran/views/ayah_view.dart';
import 'package:quran/views/dashboard.dart';
import 'package:quran/views/home_view.dart';
import 'package:quran/views/on_bording_screen.dart';
import 'package:quran/views/splash_view.dart';
import 'package:quran/views/verse_view.dart';
class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Constant.title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashView()
    );
  }
}