import 'package:flutter/material.dart';
import 'package:untitled/home_screen.dart';
import 'package:untitled/suraname-details.dart';
import 'package:untitled/themedata.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme: Themedata.lighttheme,
        routes: {
          Homescreen.routname: (context) => Homescreen(),
          Sura_detals.routname: (context) => Sura_detals()
        },
        initialRoute: Homescreen.routname);
  }
}
