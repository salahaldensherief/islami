import 'package:flutter/material.dart';
import 'package:islami/ui/HadethDetails/HadethDetailsScreen.dart';
import 'package:islami/ui/chapterDetails/ChapterDetails_Screen.dart';
import 'package:islami/ui/home/hadeth/Hadeth.dart';

class HadethTitlewidget extends StatelessWidget {
 Hadeth hadeth;
 HadethTitlewidget(this.hadeth);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(HadethdetailsScreen.routeName,
        arguments: hadeth
        );




      },
      child: Container(
          padding: EdgeInsets.all(8),
          alignment: Alignment.center,
          child: Text(hadeth.title,
            style: TextStyle(
                fontSize: 25,
                fontFamily: 'assets/Monotype Koufi Bold/Monotype Koufi Bold.ttf'

            ),
          )),
    );
  }
}
