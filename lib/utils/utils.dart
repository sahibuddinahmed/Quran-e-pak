import 'package:flutter/cupertino.dart';

class Utlis{

  Utlis._();

  final instance =  Utlis._();

  //Width
  static width(BuildContext context)
  {
    MediaQuery.of(context).size.width;
  }
  //Height
  static height(BuildContext context)
  {
    MediaQuery.of(context).size.height;
  }
}