import 'package:flutter/material.dart';

class HadithTab extends StatelessWidget {
  List<String> suraName = [];
  @override
  Widget build(BuildContext context) {
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
                suraName[index],
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
            ),
            itemCount: suraName.length,
            separatorBuilder: (context, index) => Divider(),
          ),
        ),
      ],
    );
  }
}
//dsdgfhf
