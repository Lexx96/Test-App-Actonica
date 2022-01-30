import 'package:flutter/material.dart';

/// Класс настроек цветов преложения
abstract class ColorsLightTheme {
  static const Color scaffoldBackgroundColor =
      Color.fromRGBO(252, 252, 252, 1.0);
  static const Color navigationBarBackgroundColor =
      Color.fromRGBO(245, 245, 245, 1.0);
  static const Color headerColor = Color.fromRGBO(254, 119, 51, 1);
  static const Color textColor = Color.fromRGBO(67, 67, 67, 1);
  static const Color priceColor = Color.fromRGBO(255, 172, 11, 1);
  static const Color titleTextCardColor = Color.fromRGBO(127, 127, 127, 1);
  static const Color descriptionCardColor = Color.fromRGBO(154, 154, 154, 1);
}

/// Переменная для переопределения темы приложения
final myLightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: ColorsLightTheme.scaffoldBackgroundColor,
  appBarTheme: const AppBarTheme(
    foregroundColor: ColorsLightTheme.headerColor,
    backgroundColor: ColorsLightTheme.scaffoldBackgroundColor,
    elevation: 0,
    titleTextStyle: TextStyle(
      fontSize: 24.0,
      color: ColorsLightTheme.textColor,
      fontFamily: 'Gabriela',
    ),
  ),
  textTheme: const TextTheme(
    bodyText2: TextStyle(
      color: ColorsLightTheme.descriptionCardColor,
      fontFamily: 'Gabriela',
    ), // основной
  ),
);
