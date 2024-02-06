import 'package:flutter/material.dart';
import '../widgets/colors_pallete.dart';

abstract class IHomeTheme {
  IBottomBarTheme get bottomBarTheme;
}

class HomeLightTheme implements IHomeTheme {
  const HomeLightTheme();

  @override
  IBottomBarTheme get bottomBarTheme => const BottomBarLightTheme();
}

class HomeDarkTheme implements IHomeTheme {
  const HomeDarkTheme();

  @override
  IBottomBarTheme get bottomBarTheme => const BottomBarDarkTheme();
}

abstract class IBottomBarTheme {
  Color get backgroundColor;
  Color get selectedItemColor;
  Color get unselectedItemColor;
}

class BottomBarLightTheme implements IBottomBarTheme {
  const BottomBarLightTheme();

  @override
  Color get backgroundColor => ColorsPalette.BACK;

  @override
  Color get selectedItemColor => ColorsPalette.TEXT;

  @override
  Color get unselectedItemColor => ColorsPalette.GRAY;
}

class BottomBarDarkTheme implements IBottomBarTheme {
  const BottomBarDarkTheme();

  @override
  Color get backgroundColor => ColorsPalette.BACK_BLACK_APPLE;

  @override
  Color get selectedItemColor => ColorsPalette.BLUE_TEXT_APPLE;

  @override
  Color get unselectedItemColor => ColorsPalette.GRAY_TEXT;
}
