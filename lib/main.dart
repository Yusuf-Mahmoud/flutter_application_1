import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:flutter_application_1/taps/quran/sura_detalis_screen.dart';
import 'package:flutter_application_1/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.ligthTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes: {HomeScreen.routeName: (context) => HomeScreen(),
      SuraDetailsScreen.routeName: (context) => SuraDetailsScreen()},
      initialRoute: HomeScreen.routeName,
    );
  }
}
