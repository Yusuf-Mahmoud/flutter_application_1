import 'package:flutter/material.dart';

class IslamicRadioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Expanded(
                  flex: 1,
                  child: Image.asset(
                    'assets/images/radio_image.png',
                    width: 600.0,
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                'إذاعة القرآن الكريم',
                style: TextStyle(fontSize: 25.0),
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.fast_rewind),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.play_arrow),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.fast_forward),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
