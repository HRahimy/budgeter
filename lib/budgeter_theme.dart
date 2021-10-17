import 'package:flutter/material.dart';

class BudgeterTheme {
  static const Color highlightColor = Color.fromRGBO(0, 188, 212, 1);

  static ThemeData get theme {
    final themeData = ThemeData.light();

    return themeData.copyWith(
      primaryColor: Colors.white,
      highlightColor: highlightColor,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: highlightColor,
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: highlightColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: highlightColor,
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 23,
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(),
      ),
    );
  }
}
