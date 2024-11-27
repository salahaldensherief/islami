import 'package:flutter/material.dart';
import 'package:islami/ui/home/hadeth/HadethTab.dart';
import 'package:islami/ui/home/quran/QuranTab.dart';
import 'package:islami/ui/home/radio/RadioTab.dart';
import 'package:islami/ui/home/tasbeh/TasbehTab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home-screen';
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/main_background.png',),fit:BoxFit.fill )
        ),
        child: Scaffold(
     appBar: AppBar(
       title: Text('islami'),

     ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index){
           setState(() {
             selectedTabIndex = index;
           });
            },
            currentIndex:selectedTabIndex ,

              items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/quran.png')),label: 'Quran'  ),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon:  ImageIcon(AssetImage('assets/images/ic_hadeth.png')),label: 'hadeth'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/sebha.png') ),label: 'sebha'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon:  ImageIcon(AssetImage('assets/images/radio.png')),label: 'radio'),
          ]),
body: tabs[selectedTabIndex],
    )

    );
  }
  List<Widget> tabs =[
    QuranTab(),
    Tasbehtab(),
    RadioTab(),
    HadethTab(),
  ];
}
