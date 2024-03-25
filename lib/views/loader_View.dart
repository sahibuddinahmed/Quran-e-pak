import 'package:flutter/material.dart';
import 'package:quran/utils/constant.dart';
import 'dart:math';

import 'package:quran/utils/utils.dart';

class LoaderView extends StatefulWidget {
  const LoaderView({Key? key}) : super(key: key);

  @override
  _LoaderViewState createState() => _LoaderViewState();
}

class _LoaderViewState extends State<LoaderView> with SingleTickerProviderStateMixin {

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: Duration(seconds: 2))..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Utlis.width(context),
      height: Utlis.height(context),
      color: Colors.black.withOpacity(0.2),
      child: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (_, child) {
            return Transform.rotate(
              angle: _controller.value * 2 * pi,
              child: child,
            );
          },
          child: Image(image: AssetImage(Constant.logo,),width: 100,height: 100)
        ),
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
}