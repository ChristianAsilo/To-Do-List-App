import 'package:flutter/material.dart';

class ToDoAppTheme {
  static TextTheme lightTextTheme = const TextTheme(
    displayLarge: TextStyle(
      fontSize: 50.0,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    ),
    displayMedium: TextStyle(
      color: Colors.black,
      fontSize: 30.0,
    ),
    displaySmall: TextStyle(
      fontSize: 20,
      color: Colors.black,
    ),
    bodySmall: TextStyle(
      fontSize: 16,
      color: Colors.black,
    ),
  );
  static TextTheme darkTextTheme = const TextTheme(
    displayLarge: TextStyle(
      fontSize: 50.0,
      color: Colors.white,
      fontWeight: FontWeight.w700,
    ),
    displayMedium: TextStyle(
      color: Colors.white,
      fontSize: 30.0,
    ),
    displaySmall: TextStyle(
      fontSize: 20,
      color: Colors.white,
    ),
    bodySmall: TextStyle(
      fontSize: 20,
      color: Colors.white,
    ),
  );
}
