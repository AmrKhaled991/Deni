import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/abbscreens/quran.dart';

class Sura_detals extends StatefulWidget {
  static String routname = 'sura-name';

  @override
  State<Sura_detals> createState() => _Sura_detalsState();
}

class _Sura_detalsState extends State<Sura_detals> {
  List<String> ayat = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as nameofsura;

    loadfile(args.index);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/quran.png'), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text('${args.name}',
              style: Theme.of(context).textTheme.headline1),
        ),
        body: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: Colors.white),
          margin: EdgeInsets.all(20),
          child: ayat.length == 0
              ? Center(
                  child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ))
              : ListView.separated(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("${ayat[index]}(${index + 1})",
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl),
                    );
                  },
                  itemCount: ayat.length,
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

  void loadfile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    ayat = lines;
    setState(() {});
  }
}
