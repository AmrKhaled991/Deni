import 'dart:ui';

import 'package:flutter/material.dart';

class Themedata {
  static Color primarylight = Color(0xffB7935F);
  static Color blackcolor = Color(0xff242424);
  static Color whitecolor = Colors.white;
  static ThemeData lighttheme = ThemeData(
    primaryColor: primarylight,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(color: blackcolor)),
    textTheme: TextTheme(
        headline1: TextStyle(
            color: blackcolor, fontWeight: FontWeight.bold, fontSize: 30),
        headline2: TextStyle(
            color: blackcolor, fontWeight: FontWeight.w400, fontSize: 25),
        headline3: TextStyle(
            color: blackcolor, fontWeight: FontWeight.bold, fontSize: 25)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackcolor,
      unselectedItemColor: whitecolor,
    ),
  );
}
