import 'package:flutter/material.dart';

class AppTheme {
  static Color primarylight = Color(0xFFB7935F);
  static Color black = Colors.black;
  static Color white = Colors.white;
  static ThemeData ligthTheme = ThemeData(
    //scaffoldBackgroundColor: Colors.cyan,
    primaryColor: primarylight,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: black,
      backgroundColor: primarylight,
      unselectedItemColor: white,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: black,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: TextTheme(
      headlineSmall:
          TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: black,),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
  );
}
