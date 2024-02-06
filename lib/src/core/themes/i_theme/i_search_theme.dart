import 'package:flutter/material.dart';
import '../widgets/colors_pallete.dart';
import '../widgets/text_theme_properties.dart';

abstract class ISearchTheme {
  ISearchBarTheme get searchBarTheme;
}

class SearchLightTheme implements ISearchTheme {
  const SearchLightTheme();

  @override
  SearchBarLightTheme get searchBarTheme => const SearchBarLightTheme();
}

class SearchDarkTheme implements ISearchTheme {
  const SearchDarkTheme();

  @override
  SearchBarDarkTheme get searchBarTheme => const SearchBarDarkTheme();
}

abstract class ISearchBarTheme {
  const ISearchBarTheme();

  Color get inactiveIconColor;
  Color get activeColor;
  Color get inactiveColor;
  Color get backgroundColor;

  TextStyle get textStyle;
  TextStyle get hintStyle;
  TextStyle get errorStyle => const TextStyle(
    fontSize: 13,
    color: Colors.red,
    fontWeight: FontWeight.w500,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}

class SearchBarLightTheme extends ISearchBarTheme {
  const SearchBarLightTheme();

  @override
  Color get inactiveIconColor => ColorsPalette.TEXT0;

  @override
  Color get activeColor => ColorsPalette.TEXT;

  @override
  Color get inactiveColor => ColorsPalette.TEXT0;

  @override
  Color get backgroundColor => ColorsPalette.BACK;

  @override
  TextStyle get textStyle => const TextStyle(
    fontSize: 17,
    height: 1.3,
    color: ColorsPalette.TEXT,
    fontWeight: FontWeight.w300,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get hintStyle => const TextStyle(
    fontSize: 17,
    height: 1.3,
    color: ColorsPalette.TEXT0,
    fontWeight: FontWeight.w300,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}

class SearchBarDarkTheme extends ISearchBarTheme {
  const SearchBarDarkTheme();

  @override
  Color get inactiveIconColor => ColorsPalette.GRAY_TEXT;

  @override
  Color get activeColor => ColorsPalette.WHITE_TEXT_APPLE;

  @override
  Color get inactiveColor => ColorsPalette.GRAY_TEXT;

  @override
  Color get backgroundColor => ColorsPalette.BACK_BLACK_APPLE;

  @override
  TextStyle get textStyle => const TextStyle(
    fontSize: 17,
    height: 1.3,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: FontWeight.w300,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get hintStyle => const TextStyle(
    fontSize: 17,
    height: 1.3,
    color: ColorsPalette.GRAY_TEXT,
    fontWeight: FontWeight.w300,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}