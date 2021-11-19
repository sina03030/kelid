import 'package:flutter/material.dart';

class StaticColors {
  static final _staticColors = StaticColors._internal();
  factory StaticColors(){
    return _staticColors;
  }
  StaticColors._internal();
  static const Color primaryColor = Color.fromARGB(255,0,0,51);
  static const Color darkGreyColor = Color.fromARGB(255,67,64,65);
  static const Color globalBackgroundColor = Color.fromARGB(255,246,246,246);
  static const Color greyColor = Colors.grey;
  static const Color whiteColor = Colors.white;
}