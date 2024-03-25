import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran/holyquran.dart';
class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final to = getVerse(5, 26) + getVerseEndSymbol(100);
    return Scaffold(
      body: Center(
        child: Text(to,textDirection: TextDirection.rtl,textAlign: TextAlign.right,),
      )
    );
  }
}
