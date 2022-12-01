import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/abbscreens/7adeth/ahades.dart';
import 'package:untitled/abbscreens/quran/quran.dart';
import 'package:untitled/abbscreens/radio.dart';
import 'package:untitled/abbscreens/sebha.dart';
import 'package:untitled/themedata.dart';

class Homescreen extends StatefulWidget {
  static String routname = 'Home';

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int numicon = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/quran.png'), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Islami', style: Theme.of(context).textTheme.headline1),
        ),
        body: myscreen[numicon],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: Themedata.primarylight),
          child: BottomNavigationBar(
            currentIndex: numicon,
            onTap: (index) {
              numicon = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/radio.png')),
                  label: 'radio'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                  label: 'sebha'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/ahades.png')),
                  label: 'ahades'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/tab_quran.png')),
                  label: 'quran'),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> myscreen = [Radioxe(), Sebha(), Ahades(), Quran()];
}
