import 'package:flutter/material.dart';
class AppTheme {
  static const Color primaryColor = Color.fromARGB(255, 40, 50, 140); // Тема на темно-сина
  static const Color secondaryColor = Color.fromARGB(255, 250, 99, 26); // Топла оранжево-жолта
  static const Color backgroundColor = Color(0xFFF2F7FF); // Светло сина
  static const Color cardBackgroundColor = Color(0xFFFFFFFF);
  static const Color textColor = Color.fromARGB(255, 50, 50, 50); // Тамно сив
  static const Color buttonColor = Color(0xFFFC4747); // Повеќе контрастна боја за копчиња
  static final ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 26,
      ),
    ),
    cardTheme: CardTheme(
      color: cardBackgroundColor,
      elevation: 10, // Поголема сенка за картата
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15), // Поаголем радиус на аглите
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: textColor, fontSize: 18), // Поголем текст
      bodyMedium: TextStyle(color: textColor, fontSize: 16),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: buttonColor,
      textTheme: ButtonTextTheme.primary,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: buttonColor, // Изглед на копчето за случаен шега
    ),
  );
}









