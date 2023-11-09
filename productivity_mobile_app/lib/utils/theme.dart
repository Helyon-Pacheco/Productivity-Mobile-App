import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Colors.blue,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: Colors.blueAccent,
      ),
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        bodyText1: TextStyle(color: Colors.black),
        bodyText2: TextStyle(color: Colors.black),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: Colors.grey,
      colorScheme: ColorScheme.fromSwatch(
        brightness: Brightness.dark,
      ).copyWith(
        secondary: Colors.grey[600],
      ),
      scaffoldBackgroundColor: Colors.black,
      textTheme: TextTheme(
        bodyText1: TextStyle(color: Colors.white),
        bodyText2: TextStyle(color: Colors.white),
      ),
    );
  }
}
