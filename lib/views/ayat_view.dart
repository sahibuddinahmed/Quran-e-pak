import 'package:flutter/material.dart';
import 'package:quran/holyquran.dart';
import 'package:quran/models/verse.dart';
import 'package:quran/utils/constant.dart';
import 'package:get/get.dart';
import 'package:quran/controllers/verse_in_surah_controller.dart';
import 'package:quran/views/loader_View.dart';
// class AyatView extends StatefulWidget {
//   // final List<Verse> ayahs;
//   final number;
//   const AyatView({Key? key, required this.number}) : super(key: key);
//   @override
//   _AyatViewState createState() => _AyatViewState();
// }
//
// class _AyatViewState extends State<AyatView> {
//
//   final VerseInSurahController _verseInSurahController = Get.put(VerseInSurahController());
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     _verseInSurahController.dispose();
//     super.dispose();
//   }
//   @override
//   void initState() {
//     // TODO: implement initState
//     _verseInSurahController.number = widget.number;
//     _verseInSurahController.getVerseInSurah();
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     return Scaffold(
//         appBar: AppBar(
//             title: Text(Constant.title),
//             leading: GestureDetector(
//               child: const Icon(Icons.arrow_back),
//               onTap: () {
//                 Get.back();
//               },
//             )),
//       body: Obx(()
//      {
//       if (_verseInSurahController.isLoading.value == false) {
//        return ListView.builder
//           (
//             itemCount: _verseInSurahController.verse.value!.length,
//             itemBuilder: (context, index) {
//               return buildTitle(_verseInSurahController.verse.value![index], height, width);
//             });
//       }
//       else {
//         return Center(child: LoaderView(),);
//       }
//     }
//
//       ),
//     );
//   }
// }
//

class AyatView extends StatelessWidget {
  final number;
  AyatView({Key? key,required this.number}) : super(key: key);
  final VerseInSurahController _verseInSurahController = Get.put(VerseInSurahController());
  @override
  Widget build(BuildContext context) {
    _verseInSurahController.number = number;
    _verseInSurahController.getVerseInSurah();
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          title: Text(Constant.title),
          leading: GestureDetector(
            child: const Icon(Icons.arrow_back),
            onTap: () {
              Get.back();
            },
          )),
      body: Obx(()
      {

        if (_verseInSurahController.isLoading.value == false) {
          return ListView.builder
            (
              itemCount: _verseInSurahController.verse.value!.length,
              itemBuilder: (context, index) {
                return buildTitle(_verseInSurahController.verse.value![index], height, width);
              });
        }
        else {
          return Center(child: LoaderView(),);
        }
      }

      ),
    );
  }
}
Widget buildTitle(Verse _ayat, double height, double width) {
  final verseString = _ayat.content_arabic! + getVerseEndSymbol(_ayat.verse_number!);
  return Padding(
    padding: EdgeInsets.fromLTRB(width * 0.015, 10, 10, 10),
    child: ListTile(
      title: Text(verseString,
          textAlign: TextAlign.right,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 26,
              color: Colors.black)),
      subtitle: Text(_ayat.content_english ?? "",
        textAlign: TextAlign.left,),
    ),
  );

}




