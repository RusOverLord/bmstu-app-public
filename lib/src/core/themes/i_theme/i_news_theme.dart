import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import '../widgets/colors_pallete.dart';
import '../widgets/text_theme_properties.dart';
import 'i_theme_options.dart';

abstract class INewsTheme {
  INewsFullTheme get fullTheme;
  INewsPreviewTheme get previewTheme;
}

class NewsLightTheme implements INewsTheme {
  const NewsLightTheme();

  @override
  NewsFullLightTheme get fullTheme => const NewsFullLightTheme();

  @override
  NewsPreviewLightTheme get previewTheme => const NewsPreviewLightTheme();
}

class NewsDarkTheme implements INewsTheme {
  const NewsDarkTheme();

  @override
  NewsFullDarkTheme get fullTheme => const NewsFullDarkTheme();

  @override
  NewsPreviewDarkTheme get previewTheme => const NewsPreviewDarkTheme();
}

abstract class INewsPreviewTheme {

  Color get backgroundColor;

  /// [Заголовок]
  TextStyle get textStyle1;

  /// [Дата]
  TextStyle get textStyle2;

  /// [Описание]
  TextStyle get textStyle3;

  /// [Кнопка 'подробнее']
  TextStyle get textStyle4;

  /// [Кнопка 'подробнее']
  Color get buttonColor;
}

class NewsPreviewLightTheme implements INewsPreviewTheme {
  const NewsPreviewLightTheme();

  @override
  Color get backgroundColor => ColorsPalette.BACK;

  /// [Заголовок]
  @override
  TextStyle get textStyle1 => const TextStyle(
    fontSize: 18,
    height: 1.2,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.bold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  /// [Дата]
  @override
  TextStyle get textStyle2 => const TextStyle(
    fontSize: 13,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  /// [Описание]
  @override
  TextStyle get textStyle3 => const TextStyle(
    fontSize: 15,
    height: 1.2,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  /// [Кнопка 'подробнее']
  @override
  TextStyle get textStyle4 => const TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  /// [Кнопка 'подробнее']
  @override
  Color get buttonColor => ColorsPalette.BLUE_FROM_SITE;
}

class NewsPreviewDarkTheme implements INewsPreviewTheme {
  const NewsPreviewDarkTheme();

  @override
  Color get backgroundColor => ColorsPalette.DARK_GRAY_FOR_BLOCK_APPLE;

  /// [Заголовок]
  @override
  TextStyle get textStyle1 => const TextStyle(
    fontSize: 18,
    height: 1.2,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.bold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  /// [Дата]
  @override
  TextStyle get textStyle2 => const TextStyle(
    fontSize: 13,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  /// [Описание]
  @override
  TextStyle get textStyle3 => const TextStyle(
    fontSize: 15,
    height: 1.2,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  /// [Кнопка 'подробнее']
  @override
  TextStyle get textStyle4 => const TextStyle(
    fontSize: 16,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  /// [Кнопка 'подробнее']
  @override
  Color get buttonColor => ColorsPalette.BLUE_TEXT_APPLE;
}

///#region [INewsFullTheme]

abstract class INewsFullTheme {
  /// [Заголовок]
  TextStyle get textStyle1;

  /// [Дата]
  TextStyle get textStyle2;

  IActionButtonTheme get actionButtonTheme;

  IMarkdownTheme get markdownTheme;
}

class NewsFullLightTheme implements INewsFullTheme {
  const NewsFullLightTheme();

  /// [Заголовок]
  @override
  TextStyle get textStyle1 => const TextStyle(
    fontSize: 18,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  /// [Дата]
  @override
  TextStyle get textStyle2 => const TextStyle(
    fontSize: 13,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  ActionButtonLightTheme get actionButtonTheme => const ActionButtonLightTheme();

  @override
  MarkdownLightTheme get markdownTheme => const MarkdownLightTheme();
}

class NewsFullDarkTheme implements INewsFullTheme {
  const NewsFullDarkTheme();

  /// [Заголовок]
  @override
  TextStyle get textStyle1 => const TextStyle(
    fontSize: 18,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  /// [Дата]
  @override
  TextStyle get textStyle2 => const TextStyle(
    fontSize: 13,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  ActionButtonDarkTheme get actionButtonTheme => const ActionButtonDarkTheme();

  @override
  MarkdownDarkTheme get markdownTheme => const MarkdownDarkTheme();
}

abstract class IActionButtonTheme {
  TextStyle get textStyle;

  Color get backgroundColor;
}

class ActionButtonLightTheme implements IActionButtonTheme {
  const ActionButtonLightTheme();

  @override
  TextStyle get textStyle => const TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  Color get backgroundColor => ColorsPalette.BLUE_FROM_SITE;
}

class ActionButtonDarkTheme implements IActionButtonTheme {
  const ActionButtonDarkTheme();

  @override
  TextStyle get textStyle => const TextStyle(
    fontSize: 16,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  Color get backgroundColor => ColorsPalette.BLUE_TEXT_APPLE;
}

abstract class IMarkdownTheme {
  /// [Перечень стилей в маркдауне]
  MarkdownStyleSheet get styleSheet;
}

class MarkdownLightTheme implements IMarkdownTheme {
  const MarkdownLightTheme();

  @override
  MarkdownStyleSheet get styleSheet =>
      MarkdownStyleSheet.fromTheme(const LightThemeOptions().themeData)
          .copyWith(
        p: p,
        h1: h1,
        h2: h2,
        h3: h3,
        h4: h4,
        h5: h5,
        h6: h6,
        listBullet: p,
      );

  TextStyle get p => const TextStyle(
    fontSize: 16,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  TextStyle get h1 => const TextStyle(
    fontSize: 28,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.bold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  TextStyle get h2 => const TextStyle(
    fontSize: 21,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  TextStyle get h3 => const TextStyle(
    fontSize: 16,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  TextStyle get h4 => const TextStyle(
    fontSize: 14,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  TextStyle get h5 => const TextStyle(
    fontSize: 12,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  TextStyle get h6 => const TextStyle(
    fontSize: 9,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}

class MarkdownDarkTheme implements IMarkdownTheme {
  const MarkdownDarkTheme();

  @override
  MarkdownStyleSheet get styleSheet =>
      MarkdownStyleSheet.fromTheme(const DarkThemeOptions().themeData).copyWith(
        p: p,
        h1: h1,
        h2: h2,
        h3: h3,
        h4: h4,
        h5: h5,
        h6: h6,
        listBullet: p,
      );

  TextStyle get p => const TextStyle(
    fontSize: 16,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  TextStyle get h1 => const TextStyle(
    fontSize: 28,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.bold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  TextStyle get h2 => const TextStyle(
    fontSize: 21,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  TextStyle get h3 => const TextStyle(
    fontSize: 16,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  TextStyle get h4 => const TextStyle(
    fontSize: 14,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  TextStyle get h5 => const TextStyle(
    fontSize: 12,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  TextStyle get h6 => const TextStyle(
    fontSize: 9,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}

///#endregion
