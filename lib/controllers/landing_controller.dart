import 'package:get/get.dart';
import 'package:quran/holyquran.dart';
import 'package:quran/models/surah.dart';
class LandingController extends GetxController
{
  @override
  void onInit() {
    // TODO: implement onInit
    getSurah();
    super.onInit();
  }
  var isLoading = true.obs;
  var surahs = AllSurah().allSurah.obs;

  void getSurah() async{
    surahs.value = AllSurah.fromJSON(getAllSurah()).allSurah!.toList();
    isLoading.value = false;
  }


}