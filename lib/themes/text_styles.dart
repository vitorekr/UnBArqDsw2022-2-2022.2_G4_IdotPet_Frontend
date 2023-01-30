import 'package:flutter/material.dart';
import 'package:idotpet/themes/global_colors.dart';

const textSize12 = 12.0;
const textSize14 = 14.0;
const textSize16 = 16.0;
const textSize17 = 17.0;
const textSize18 = 18.0;
const textSize19 = 19.0;
const textSize20 = 20.0;
const textSize24 = 24.0;
const textSize29 = 29.0;

abstract class MyTextStyle {

  static const navBarButtonTextStyle = 
      TextStyle(fontSize: 18, 
      fontWeight: FontWeight.normal, 
      color: Color.fromRGBO(53, 69, 88, 1));

  static const elevatedButtonTextStyle =
      TextStyle(fontSize: textSize17, color: Colors.white);

  static const textButtonTextStyle =
      TextStyle(fontSize: textSize17, color: GlobalColors.primaryClean);

  static const scaffoldTextStyle =
      TextStyle(fontSize: textSize24, color: GlobalColors.primary);

  static const s20w500 =
      TextStyle(fontSize: textSize20, fontWeight: FontWeight.w300);

  static const primaryCleans14 =
      TextStyle(fontSize: textSize14, color: GlobalColors.primaryClean);

  static const grey90s14 = TextStyle(
      fontSize: textSize16,
      color: Color(0xFF354558) //como pegar globalcolors.gray90
      );

  static const grey50s16 =
      TextStyle(color: Color(0xFFA7AAB8), fontSize: textSize16);

  static const white3w300s12 = TextStyle(
      color: Colors.white, fontWeight: FontWeight.w300, fontSize: textSize12);

  static const grey50w300s12 = TextStyle(
      color: Color(0xFFA7AAB8),
      fontWeight: FontWeight.w300,
      fontSize: textSize12);

  static const grey50w300s14 = TextStyle(
      color: Color(0xFFA7AAB8),
      fontWeight: FontWeight.w300,
      fontSize: textSize14);

  static const sucessColorw300s16 = TextStyle(
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w300,
      fontSize: textSize16);

  static const whitew300s14 = TextStyle(
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w300,
      fontSize: textSize14);

  static const whitew500s20 = TextStyle(
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w500,
      fontSize: textSize20);

  static const charcoalw300s19 = TextStyle(
      color: Color(0xFF354558),
      fontWeight: FontWeight.w300,
      fontSize: textSize19);

  static const cetaceanw300s24 = TextStyle(
      color: Color(0xFF050F2A),
      fontWeight: FontWeight.w300,
      fontSize: textSize24);

  static const catalinaBluew300s29 = TextStyle(
      color: Color(0xFF032272),
      fontWeight: FontWeight.w300,
      fontSize: textSize29);

  static const textStyle18white = TextStyle(
    color: Colors.white,
    fontSize: textSize18,
  );

  static const textStyle14white = TextStyle(
    color: Colors.white,
    fontSize: textSize14,
  );
}
