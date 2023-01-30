import 'package:flutter/material.dart';

///https://www.notion.so/jeancarlo/Cores-b0b4e861bd3f45d5b15300777e9b52da
abstract class GlobalColors {
  static const primary = Color(0xff032272);
  static const primaryClean = Color(0xff2154B0);
  static const secondary = Color(0xFF0FB2F3);
  static const secondaryDark = Color(0xFF2B6CE4);
  static const secondaryText = Color(0xFF707070);
  //static const secondaryText2 = Color(0xFFA7AAB8); 
  static const backgroundGrey = Color(0xFFE8F7FA);
  
  static const border = Color(0xFFC6D8E2);
  static Color gray90 = shadesOffGray[5];

  //354558
  // static const blackText = Color(0xFF050F2A);  

  static const error = Color(0xFFF73859);
  static const warning = Color(0xFFF5D40B);
  static const success = Color(0xFF009432);

  static const List<Color> shadesOffGray = [
    Color(0xFFFFFFFF), //white
    Color(0xFFE8F7FA), //gray 10
    Color(0xFFC6D8E2), //gray 30
    Color(0xFFA7AAB8), //gray 50
    Color(0xFF616F80), //gray 70
    Color(0xFF354558), //gray 90
    Color(0xFF050F2A), //black
  ];

  static const List<Color> complementaryColors = [
    Color(0xFF081A53),
    Color(0xFF166C8A),
    Color(0xFF3CB0CD),
    Color(0xFF7CD5F3),
    Color(0xFFB7EDFF),
    Color(0xFF1BEE9A),
    Color(0xFF21C063),
    Color(0xFF229631),
    Color(0xFF0C5A23),
    Color(0xFF0A3817),
  ];

  static const primarySwatch = MaterialColor(
    0xff032272,
    <int, Color>{
      50: Color(0xff003366),
      100: Color(0xff003366),
      200: Color(0xff003366),
      300: Color(0xff003366),
      400: Color(0xff003366),
      500: Color(0xff003366),
      600: Color(0xff003366),
      700: Color(0xff003366),
      800: Color(0xff003366),
      900: Color(0xff003366),
    },
  );
}
