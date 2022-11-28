import 'package:flutter/material.dart';
import 'package:untitled/home_screen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(initialRoute: Homescreen.routname, routes: {
      Homescreen.routname: (context) => Homescreen(),
    });
  }
}
