import 'package:flutter/material.dart';
import 'package:quran/constant/app_image.dart';
import 'package:quran/holyquran.dart';
import 'package:quran/models/surah.dart';
import 'package:quran/quran_data.dart';
import 'package:quran/views/ayah_view.dart';
import 'package:quran/views/drawer_view.dart';
import 'package:quran/views/verse_view.dart';
import 'ayat_view.dart';
import 'package:quran/controllers/landing_controller.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  late List<Surah> surahs;
  HomeView({Key? key, required this.surahs}) : super(key: key);
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          drawer: DrawerView(),
          body: Column(
            children: [headerView(context), Expanded(child: surahListView(context))],
          )),
    );

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
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
    return ListView.builder(
        itemCount: widget.surahs.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: SurahRow(context, index),
            onTap: () => {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) =>
              //             AyahView(number: widget.surahs[index].number)))
              Get.to(AyahView(number: widget.surahs[index].number))

            },
          );
        });
  }

  Widget SurahRow(BuildContext context, int index) {
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
                  widget.surahs[index].name ?? "",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.surahs[index].english ?? "",
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  widget.surahs[index].arabic ?? "",
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
                      widget.surahs[index].number!.toString(),
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
