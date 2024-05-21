import 'package:flutter/material.dart';

abstract class StyleText {
  static const iconTextBla =
      TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.w900);
  static const iconTextBlu = TextStyle(
      color: Color(0xFF006EFF), fontSize: 35, fontWeight: FontWeight.w900);
  static const smallTextG =
      TextStyle(color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 10);
  static const textH3 = TextStyle(fontWeight: FontWeight.w600, fontSize: 18);
  static const textH4 = TextStyle(fontWeight: FontWeight.w600, fontSize: 14.33);
  static const textH4G = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 14.33, color: Colors.grey);

  static const textH2B = TextStyle(fontWeight: FontWeight.w600, fontSize: 25);
  static const textH2G =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 25, color: Colors.grey);
  static const textH4Blu = TextStyle(
      color: Color(0xFF006EFF), fontSize: 11, fontWeight: FontWeight.w400);
  static const textH2Blu = TextStyle(
      color: Color(0xFF006EFF), fontSize: 25, fontWeight: FontWeight.w500);
  static const textH5G =
      TextStyle(color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 10);
  static const textH3Blu = TextStyle(
      color: Color(0xFF006EFF), fontSize: 16, fontWeight: FontWeight.w400);
  static const textH3G =
      TextStyle(color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 16);
}

abstract class StyleButton {
  static const elevatodButton = ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(
      Color(0xFF006EFF),
    ),
    foregroundColor: MaterialStatePropertyAll(Colors.white),
  );
}
