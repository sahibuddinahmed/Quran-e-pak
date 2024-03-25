import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'alphabet_view.dart';class DrawerView extends StatelessWidget {
  DrawerView({Key? key}) : super(key: key);
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Material(
          child:
          Container(
            decoration: BoxDecoration(
              gradient: _topBarGradient()
            ),
            child: ListView(
              children: [
                ListTile(
                  title: Text('Profile'),
                  onTap: _gotoAlphabetView,
                )
              ],
            ),
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
  void _gotoAlphabetView()
  {
    Get.to(() => AlphabetView(),transition: Transition.leftToRight);
  }
}
