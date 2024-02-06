import 'package:flutter/material.dart';

abstract class IStandardTabBarTheme {
  ///[Активный текст]
  TextStyle get activeStyle;

  ///[Неактивный текст]
  TextStyle get inactiveStyle;

  ///[Фон активной иконки]
  Color get activeBackground;

  ///[Фон неактивной иконки]
  Color get inactiveBackground;

  ///[Граница и разделитель]
  Color get borderColor;
}
