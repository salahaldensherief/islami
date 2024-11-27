import 'package:flutter/material.dart';
import 'package:islami/ui/HadethDetails/HadethDetailsScreen.dart';
import 'package:islami/ui/chapterDetails/ChapterDetails_Screen.dart';
import 'package:islami/ui/home/home_screen.dart';
import 'package:islami/ui/home/quran/chapter_title_widget.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        ChapterDetailsScreen.routeName: (_) => ChapterDetailsScreen(),
        HadethdetailsScreen.routeName: (_) => HadethdetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
      theme: ThemeData(
        cardColor: Colors.white,
        cardTheme: CardTheme(
          color: Colors.white,
          elevation: 18,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(
            0xffB7935F,
          ),
          primary: Color(0xffB7935F),
          secondary: Color(0xedb7935f),
          onPrimary: Colors.white,
          onSecondary: Colors.black,
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
            centerTitle: true,
            color: Colors.transparent,
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 28,
            )),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(
            size: 32,
          ),
        ),
      ),
    );
  }
}
