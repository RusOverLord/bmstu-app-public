import 'package:flutter/material.dart';

abstract class IRoundedListTheme {
  IItemTheme get itemTheme;
}

abstract class IItemTheme {
  ///[Фон]
  Color get backgroundColor;
  Color get foregroundColor;
}

abstract class IItemWhomTheme extends IItemTheme {
  ///[Основной текст, название группы/имя преподавателя]
  TextStyle get captionStyle;

  ///[Дополнительный текст, кафедра]
  TextStyle get additionalStyle;
}
