import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/constant/app_image.dart';
import 'package:quran/constant/app_string.dart';
import 'package:quran/controllers/surah_controller.dart';
import 'package:quran/models/surah.dart';
import '../holyquran.dart';
import 'ayah_view.dart';

class SurahView extends StatelessWidget {

  const SurahView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final SurahController surahController = Get.put(SurahController());
    return WillPopScope(
        onWillPop: () async {
          // Prevent the back button press event
          return false;
        },child: Scaffold(body: Obx(() {
      return Column(
        children: [
          headerView(context),
          Expanded(child: surahListView(context)),
          versionAndCopyRightView(context)

        ],
      );
    }))
    );
  }
  Widget versionAndCopyRightView(BuildContext context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 2,),
            Text(AppString.APPLICATION_VERSION),
            SizedBox(height: 2,),
         // Text(AppString.APPLICATION_COPYRIGHT),
        ],
      ),
    );
  }

  Widget headerView(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImage.SURAHLIST_HEADER),
                  fit: BoxFit.fitWidth)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                getBasmala(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Scheherazade'),
              ),
              SizedBox(height: 60)
            ],
          ),
        ),
      ],
    );
  }
  Widget surahListView(BuildContext context) {
    SurahController controller = Get.find();
    return ListView.builder(
        itemCount: controller.surahs.value!.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: SurahRow(context,index),
            onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          AyahView(number: controller.surahs.value![index].number)))

            },
          );
        });
  }

  Widget SurahRow(BuildContext context, int index) {
    SurahController controller = Get.find();
    return Card(
      child: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controller.surahs.value![index].name ?? "",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  controller.surahs.value![index].english ?? "",
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  controller.surahs.value![index].arabic ?? "",
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Scheherazade',
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.right,
                ),
                SizedBox(
                  width: 5,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image(
                      image: AssetImage(AppImage.SURAH_NUMBER),
                      width: 40,
                      height: 40,
                    ),
                    Text(
                      controller.surahs.value![index].number!.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
