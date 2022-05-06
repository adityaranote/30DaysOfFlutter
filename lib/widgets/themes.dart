import 'package:flutter/material.dart';

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.blue),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );
}
