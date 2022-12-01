import 'package:flutter/material.dart';
import 'package:untitled/abbscreens/7adeth/ahades.dart';
import 'package:untitled/themedata.dart';

class Hadethdetails extends StatelessWidget {
  static String routname = 'hadethname';

  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Map;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/quran.png'), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args['hadethtitle'],
              style: Theme.of(context).textTheme.headline1),
        ),
        body: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: Colors.white),
          margin: EdgeInsets.all(20),
          child: args['hadethcon'] == 0
              ? Center(
                  child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ))
              : ListView.separated(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("${args['hadethcon']}",
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl),
                    );
                  },
                  itemCount: args['hadethcon'].length,
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Theme.of(context).primaryColor,
                      thickness: 2,
                    );
                  }),
        ),
      ),
    );
  }
}
