import 'package:flutter/material.dart';
import 'package:islami/ui/home/hadeth/Hadeth.dart';

class HadethdetailsScreen extends StatelessWidget {
  static const String routeName = 'hadeth-details';
  const HadethdetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var args =ModalRoute.of(context)?.settings.arguments as Hadeth;
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
          body:
           Column(
             children: [
               Expanded(
                 child: Card(
                  margin: EdgeInsets.symmetric(vertical: 48, horizontal: 24),
                   child: SingleChildScrollView(
                     child: Text(
                       textAlign: TextAlign.center,
                       args.content,
                     style: TextStyle(
                       fontSize: 20
                     ),
                     ),
                   ),
                 
                           ),
               ),
             ],
           )),
    );
  }
}
