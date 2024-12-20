import 'package:flutter/material.dart';

final tema = ThemeData(
  primaryColor: Colors.yellow[700],
  hintColor: Colors.black,
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    bodyLarge: const TextStyle(color: Colors.black),
    bodyMedium: TextStyle(color: Colors.grey[800]),
  ),
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: Colors.black),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.yellow[700],
    foregroundColor: Colors.black,
  ),
);