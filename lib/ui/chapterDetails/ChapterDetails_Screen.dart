import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'VerseWidget.dart';

class ChapterDetailsScreen extends StatefulWidget {
  static const String routeName = 'Chapter-Details-Screen';
  const ChapterDetailsScreen({super.key});

  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}

class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    ChapterDetailsArgs args =
        ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/main_background.png',
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: verses.isEmpty
              ? Center(child: CircularProgressIndicator())
              : Card(
                  margin: EdgeInsets.symmetric(vertical: 48, horizontal: 16),
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Versewidget(verses[index], index);
                    },
                    itemCount: verses.length,
                    separatorBuilder: (context, index) => Container(
                      color: Theme.of(context).primaryColor,
                      width: double.infinity,
                      height: 2,
                      margin: EdgeInsets.symmetric(horizontal: 64),
                    ),
                  ),
                )),
    );
  }

  List<String> verses = [];

  void loadFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    verses = fileContent.split("/n");
    setState(() {});
  }
}

class ChapterDetailsArgs {
  String title;
  int index;
  ChapterDetailsArgs(this.title, this.index);
}
