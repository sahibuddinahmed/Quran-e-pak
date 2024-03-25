import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/controllers/landing_controller.dart';
import 'package:quran/utils/constant.dart';
import 'package:quran/utils/utils.dart';
import 'package:quran/views/home_view.dart';
import 'package:quran/views/loader_View.dart';
class LandingView extends StatefulWidget {
  const LandingView({Key? key}) : super(key: key);

  @override
  _LandingViewState createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  final LandingController controller = Get.put(LandingController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children:[
            Container(
            width: Utlis.width(context),
            height: Utlis.height(context),
            color: Colors.white,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Constant.background),fit: BoxFit.fitHeight,
                )
              ),
            ),
          ),
            Obx((){
              if(controller.isLoading.value)
                {
                  return Center(child: LoaderView(),);
                }
              else
                {
                 return Column(
                    children: [
                      Spacer(),
                      Row(
                        children: [
                          Spacer(),
                          GestureDetector(
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              width: 60,
                              height: 60,
                              child: const Icon(Icons.arrow_forward_ios_outlined),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)
                              ),
                            ),
                            onTap: _gotoHome,
                          )
                        ],
                      )
                    ],
                  );
                }
            })
          ],
        ),
      ),
    );
  }
  void _gotoHome()
  {
    Get.to(() => HomeView(surahs: controller.surahs.value!),transition: Transition.leftToRight);
  }
}
