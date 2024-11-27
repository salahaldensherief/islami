import 'package:flutter/material.dart';
import 'package:islami/ui/chapterDetails/ChapterDetails_Screen.dart';

class Versewidget extends StatelessWidget {
  Versewidget(this.content,this.index);
String content;
int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
        alignment: Alignment.center,
        child: Text('$content {{$index+1}}',
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
            fontFamily: 'assets/Monotype Koufi Bold/Monotype Koufi Bold.ttf'

        ),
        ));
  }
}
