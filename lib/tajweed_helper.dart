import 'package:flutter/cupertino.dart';
import 'package:quran/MetaColors.dart';

class TajweedHelper {

  static String _tajweedMetas = "hslnpmqocfwiaudbg";

// private fun getAyahSplits(rawAyah: String): List<String> {
// val ayah = rawAyah.replace("[\\[0-9:]".toRegex(), "")
// val splits = ayah.splitWithDelimiter("(?<=[\\]\\[$tajweedMetas])|(?=[\\]\\[$tajweedMetas])")
// return splits}

static getAyahSplits(String  rawAyah)
{
  String ayah = rawAyah.replaceAll(RegExp('[\\[0-9:]'), "");
}

}
  _splitWithDelimiter(Characters input)
{
    // this.split(Regex("(?<=[$input])|(?=[$input])"))

}
//rawAyah.replace("[\\[0-9:]".toRegex(), "");