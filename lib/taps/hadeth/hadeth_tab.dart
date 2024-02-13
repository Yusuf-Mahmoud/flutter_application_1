import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/taps/hadeth/hadeth_data.dart';

class HadithTab extends StatefulWidget {
  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<Hadeth> ahadethString = [];


  @override
  Widget build(BuildContext context) {
       LoadAhadethFile();   

    return Column(
      children: [
        Image.asset(
          'assets/images/hadeth_logo.png',
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                // Navigator.of(context).pushNamed(
                //   SuraDetailsScreen.routeName,
                //   arguments: SuraDetailsArgs(index: index, suraName: suraName[index]),
                // );
              },
              child: Text(
                'الحديث رقم ${index + 1}',
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
            ),
            itemCount: 50,
            separatorBuilder: (context, index) => Divider(),
          ),
        ),
      ],
    );
  }
}

Future<void> LoadAhadethFile() async {
   String ahadethFileContent = await rootBundle.loadString('assets/files/ahadeth.txt');
  List<String>ahadethString =ahadethFileContent.split('#') ;
  ahadethString.map((hadethString) => Hadeth(title: hadethString.split('\n')[0], content: hadethString.split('\n')[1]
  ));}


