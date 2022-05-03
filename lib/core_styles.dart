import 'package:flutter/material.dart';

abstract class CoreStyles {
  static const Color black = Color(0xFF17171B);
  static const Color darkGrey = Color(0xFF303036);
  static const Color lightGrey = Color(0xFFB2B2B8);
  static const Color grey = Color(0xFF74747B);
  static const Color green = Color(0xFF44CD22);
  static const Color softBlack = Color(0xFF303036);

  static const SF = 'SF';

  static const baseTextStyle = TextStyle(
    fontFamily: SF,
  );

  static final textStyle24BoldWhite = baseTextStyle.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w800,
    color: Colors.white,
  );

  static const TextTheme textTheme = TextTheme(
    headline4: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 34, letterSpacing: 0.25),
    button: TextStyle(
        fontWeight: FontWeight.w600, fontSize: 14, letterSpacing: 1.25),
    subtitle1: TextStyle(
        fontWeight: FontWeight.normal, fontSize: 16, letterSpacing: 0.15),
    subtitle2: TextStyle(
        fontWeight: FontWeight.w600, fontSize: 14, letterSpacing: 0.1),
    bodyText2: TextStyle(
        fontWeight: FontWeight.normal, fontSize: 14, letterSpacing: 0.25),
    caption: TextStyle(
        fontWeight: FontWeight.w600, fontSize: 12, letterSpacing: 0.25),
  );
}
