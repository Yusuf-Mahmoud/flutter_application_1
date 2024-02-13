import 'package:flutter/material.dart';

class TasbeehWidget extends StatefulWidget {
  @override
  _TasbeehWidgetState createState() => _TasbeehWidgetState();
}

class _TasbeehWidgetState extends State<TasbeehWidget> {
  int tasbeehCount = 0;
  String buttonText = "سبحان الله";

  void incrementTasbeehCount() {
    setState(() {
      tasbeehCount++;
      if (tasbeehCount == 33) {
        buttonText = "الحمد لله";
      }
      if (tasbeehCount == 66) {
        buttonText = "الله أكبر";
      }
      if (tasbeehCount == 99) {
        buttonText =
            " لَا إِلَهَ إِلَّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِير";
      } else if (tasbeehCount == 100) {
        tasbeehCount = 0;
        buttonText = 'سبحان الله';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Column(
          children: <Widget>[
            Image.asset(
              'assets/images/sebha.png',
              scale: 3.5,
            ),
          ],
        ),
        SizedBox(height: 16),
        Center(
          child: Text(
            "عدد التسبيحات",
            style: TextStyle(fontSize: 32),
          ),
        ),
        SizedBox(height: 16),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xffB7935F),
            borderRadius: BorderRadius.circular(60),
          ),
          child: Text(
            " $tasbeehCount",
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: incrementTasbeehCount,
          child: Text(
            buttonText,
            style: TextStyle(color: Color(0xffB7935F)),
          ),
        ),
      ],
    );
  }
}
