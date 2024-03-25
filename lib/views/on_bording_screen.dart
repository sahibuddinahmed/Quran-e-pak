import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:quran/constant/app_image.dart';
import 'package:quran/constant/app_string.dart';
import 'package:quran/constant/hive_constant.dart';
import 'package:quran/controllers/landing_controller.dart';
import 'package:quran/controllers/on_bording_controller.dart';
import 'package:quran/views/landing_view.dart';
import 'package:quran/views/surah_view.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);
  final OnBoardingController controller = Get.put(OnBoardingController());
  final _pageController = PageController(initialPage: 0);
  List<Widget> _page = [
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Image(
            image: AssetImage(AppImage.QURAN_LANGUAGE),
            width: 300,
            height: 300,
          ),
        ),
        Text(
          AppString.OnBoarding1,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400,),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 80,
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Image(
            image: AssetImage(AppImage.QURAN_READ),
            width: 300,
            height: 300,
          ),
        ),
        Text(
          AppString.OnBoarding2,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400,),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 80,
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Image(
            image: AssetImage(AppImage.MOSQUE),
            width: 300,
            height: 300,
          ),
        ),
        Text(
          AppString.OnBoarding3,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400,),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 80,
        ),
      ],
    )
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:
        Column(
          children: [
            Expanded(
              child:
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                child: PageView(
                  children: _page,
                  controller: _pageController,
                  onPageChanged: (index) {
                    controller.changeIndicator(index);
                  },
                ),
              ),
            ),
            Obx(() {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new DotsIndicator(
                        dotsCount: _page.length,
                        position: controller.position.toDouble(),
                        decorator: DotsDecorator(
                          activeColor:Color(0xFFD4C47F),
                          size: const Size.square(9.0),
                          activeSize: const Size(18.0, 9.0),
                          activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          width: 60,
                          height: 60,
                          child: Center(child: ((_page.length - 1).toDouble() != controller.position.toDouble()) ? const Text('Skip') :  const Icon(Icons.arrow_forward_ios_outlined)),
                          decoration: BoxDecoration(
                              gradient: _topBarGradient(),
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        onTap: () {

                          var box = Hive.box(HiveConstant.SettingsBox);
                          box.put(HiveConstant.Skip, true);
                          Get.to(() => SurahView());


                        },
                      )
                    ],
                  )
                ],
              );
            })
          ],
        ),
      ),
    );
  }

  LinearGradient _topBarGradient() {
    return LinearGradient(colors: [
      Color(0xFFD7AD4F),
      Color(0xFFD4C47F),
    ]);
  }
}
