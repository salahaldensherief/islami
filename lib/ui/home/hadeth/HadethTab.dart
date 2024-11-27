import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/home/hadeth/Hadeth.dart';
import 'package:islami/ui/home/hadeth/HadethTitleWidget.dart';

class HadethTab extends StatefulWidget {
  const HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allAhadeth = [];

  @override
  void initState() {
    super.initState();
    loadHadethFile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset('assets/images/ahadeth_image.png'),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: Theme.of(context).primaryColor,
                  width: 2,
                ),
              ),
            ),
            child: Text(
              'Hadeth',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Expanded(
            flex: 3,
            child: allAhadeth.isEmpty
                ? Center(child: CircularProgressIndicator())
                : ListView.separated(
              itemBuilder: (context, index) {
                return HadethTitlewidget(
                  allAhadeth[index],

                );
              },
              separatorBuilder: (context, index) => Container(
                color: Theme.of(context).primaryColor,
                width: double.infinity,
                height: 2,
                margin: EdgeInsets.symmetric(horizontal: 64),
              ),
              itemCount: allAhadeth.length,
            ),
          ),
        ],
      ),
    );
  }

  void loadHadethFile() async {
    String fileContent = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadethList = fileContent.trim().split("#");
    for (int i = 0; i < hadethList.length; i++) {
      String singleHadeth = hadethList[i];
      List<String> hadethLines = singleHadeth.trim().split("\n");
      String title = hadethLines[0];
      hadethLines.remove(0);
      String content = hadethLines.join('\n');
      Hadeth hadeth = Hadeth(content, title);
      allAhadeth.add(hadeth);
    }
    setState(() {});
  }
}
