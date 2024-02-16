import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/taps/hadeth/hadeth_data.dart';
import 'package:flutter_application_1/taps/hadeth/hadeth_detalis_screen.dart';

class HadithTab extends StatefulWidget {
  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<Hadeth> ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (ahadeth.isEmpty) {
      LoadAhadethFile();
    }
    return Column(
      children: [
        Image.asset(
          'assets/images/hadeth_logo.png',
        ),
        Expanded(
          child: ahadeth.isEmpty
              ? LoadingIndicator()
              : ListView.separated(
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        HadithDetalisScreen.routeName,
                        arguments: ahadeth[index],
                      );
                    },
                    child: Text(
                      ahadeth[index].title,
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  itemCount: ahadeth.length,
                  separatorBuilder: (context, index) => Divider(),
                ),
        ),
      ],
    );
  }

  Future<void> LoadAhadethFile() async {
    String ahadethFileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadethString = ahadethFileContent.split('#');
    ahadeth = ahadethString.map((ahadethString) {
      List<String> hadethline = ahadethString.trim().split('\r');
      String title = hadethline[0];
      hadethline.removeAt(0);
      String content = hadethline.join('\r\n');
      return Hadeth(title, content);
    }).toList();
    setState(() {});
  }

  Widget LoadingIndicator() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
