import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:quran/constant/app_image.dart';
import 'package:quran/constant/hive_constant.dart';
import 'package:quran/utils/constant.dart';
import 'package:quran/views/landing_view.dart';
import 'package:quran/views/surah_view.dart';

import 'on_bording_screen.dart';
class SplashView extends StatefulWidget {
  SplashView({Key? key}) : super(key: key);
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var box = Hive.box(HiveConstant.SettingsBox);
    var skip = box.get(HiveConstant.Skip);
    Timer.periodic(Duration(seconds: 1), (timer) {
      timer.cancel();
      // if(skip == null || skip == false ) {
      //   Get.to(() => OnBoardingScreen());
      // }
      // else
      // {
      //   Get.to(() => SurahView());
      // }
      Get.to(() => SurahView());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
       height: MediaQuery.of(context).size.height,
       decoration: BoxDecoration(
         color: Colors.white,
         image: DecorationImage(image: AssetImage(AppImage.SPLASH_IMAGE),fit: BoxFit.cover)),
       //color: Colors.white,
       // child: Center(
       //   child: Container(
       //     width: 300,
       //     height: 300,
       //     decoration: BoxDecoration(
       //       image: DecorationImage(image: AssetImage(Constant.logo))
       //     ),
       //   )
       // )
    );
  }
}