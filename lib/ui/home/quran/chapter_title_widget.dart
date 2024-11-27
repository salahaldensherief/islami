import 'package:flutter/material.dart';
import 'package:islami/ui/chapterDetails/ChapterDetails_Screen.dart';

class ChaptertitleWidget extends StatelessWidget {
    ChaptertitleWidget(this.title,this.index);
String title;
int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context,ChapterDetailsScreen.routeName,
        arguments: ChapterDetailsArgs(title,index )
        );

      },
      child: Container(
        padding: EdgeInsets.all(8),
          alignment: Alignment.center,
          child: Text(title,
          style: TextStyle(
            fontSize: 25,
              fontFamily: 'assets/Monotype Koufi Bold/Monotype Koufi Bold.ttf'
      
          ),
          )),
    );
  }
}
