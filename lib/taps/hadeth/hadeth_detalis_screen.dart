import 'package:flutter/material.dart';
import 'package:flutter_application_1/taps/hadeth/hadeth_data.dart';
import 'package:flutter_application_1/theme.dart';

class HadithDetalisScreen extends StatelessWidget {
  static const String routeName = 'hadeth-detalis';

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth = ModalRoute.of(context)!.settings.arguments as Hadeth;
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/default_bg.png'),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              title: Text(hadeth.title),
            ),
            body: Container(
              decoration: BoxDecoration(
                color: AppTheme.white,
                borderRadius: BorderRadius.circular(25),
              ),
              margin: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.05,
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              padding: const EdgeInsets.all(20),
              child: ListView.builder(
                itemBuilder: (context, index) => Text(hadeth.content[index]),
                itemCount: hadeth.content.length,
              ),
            )));
  }
}
