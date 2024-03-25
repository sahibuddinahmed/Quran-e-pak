import 'package:get/get.dart';

class OnBoardingController extends GetxController {

  var position = 0.obs;

  changeIndicator(int current)
  {
    position.value =  current;
  }

}