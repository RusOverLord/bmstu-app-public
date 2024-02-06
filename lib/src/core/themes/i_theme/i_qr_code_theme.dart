import 'package:bbmstu_app/src/core/themes/widgets/colors_pallete.dart';
import 'package:bbmstu_app/src/core/themes/widgets/text_theme_properties.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

abstract class IQrCodeTheme {
  const IQrCodeTheme();

  /// Надпись 'Мой QR'
  TextStyle get myQrTextStyle => const TextStyle(
    fontSize: 21,
    color: ColorsPalette.BLUE_FROM_SITE,
    fontWeight: TextThemeProperties.w700,
    fontFamily: TextThemeProperties.FONT_FAMILY_MONTSERRAT,
  );

  Color get myQrColor => ColorsPalette.BLUE_FROM_SITE;

  /// Надпись c пояснением, зачем добавлять qr код: 'Для посещения мероприятий...'
  TextStyle get whyNeedQrTextStyle;

  /// Текст синих кнопок: авторизация, пройти регистрацию, добавление документов
  TextStyle get blueButtonTextStyle => const TextStyle(
    fontSize: 15,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.w700,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  /// Цвет синих кнопок: авторизация, пройти регистрацию, добавление документов
  Color get blueButtonColor => ColorsPalette.BLUE_FROM_SITE;

  /// Текст серых кнопок: Для чего мне QR-код?
  TextStyle get grayButtonTextStyle;

  /// Цвет серых кнопок: Для чего мне QR-код?
  Color get grayButtonColor => ColorsPalette.GG_CENTER;

  /// Цвет фона QR кода
  Color get qrBackgroundColor;

  /// Цвет данных QR кода
  Color get qrForegroundColor;

  /// Надпись 'Ожидает модерации'
  TextStyle get awaitingModerationTextStyle => const TextStyle(
    fontSize: 15,
    color: Color.fromRGBO(254, 157, 11, 1),
    fontWeight: TextThemeProperties.w700,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  /// Цвет обводки QR кода при 'Ожидает модерации'
  Gradient get qrWarning => const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      Color.fromRGBO(240, 245, 165, 1),
      Color.fromRGBO(250, 210, 34, 1),
      Color.fromRGBO(254, 196, 11, 1),
      Color.fromRGBO(254, 225, 0, 1),
    ],
  );

  /// Надпись 'Ошибка модерации'
  TextStyle get moderationErrorTextStyle => TextStyle(
    fontSize: 15,
    fontWeight: TextThemeProperties.w700,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
    foreground: Paint()
      ..shader = ui.Gradient.linear(
        const Offset(-1.0, 0.0),
        const Offset(1.0, 0.0),
        const <Color>[
          Color.fromRGBO(254, 74, 4, 1),
          Color.fromRGBO(250, 116, 18, 1),
        ],
      ),
  );

  /// Надпись 'Пожалуйста, повторите операцию'
  TextStyle get retryTextStyle;

  /// Цвет обводки QR кода при 'Ошибка модерации'
  Gradient get qrDenied => const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      Color.fromRGBO(254, 74, 4, 1),
      Color.fromRGBO(254, 109, 3, 1),
      Color.fromRGBO(255, 155, 2, 1),
      Color.fromRGBO(255, 164, 97, 1),
    ],
  );

  /// Цвет обводки QR кода
  Gradient get qrGranted => const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      Color.fromRGBO(31, 174, 154, 1),
      Color.fromRGBO(78, 203, 146, 1),
      Color.fromRGBO(128, 241, 143, 1),
      // Color.fromRGBO(178, 247, 216, 1),
    ],
  );

  TextStyle get userNameTextStyle;

  TextStyle get accessStatusTextStyle;

  TextStyle get expiredAtTextStyle;

  /// Надпись 'Чтобы добавить QR-код, необходимо авторизоваться в приложении'
  TextStyle get authorizationLabelTextStyle;
}

class QrCodeDarkTheme extends IQrCodeTheme {
  const QrCodeDarkTheme();

  @override
  TextStyle get whyNeedQrTextStyle => const TextStyle(
    fontSize: 15,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.w700,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get retryTextStyle => const TextStyle(
    fontSize: 15,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.w500,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get userNameTextStyle => const TextStyle(
    fontSize: 15,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.w700,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get accessStatusTextStyle => _bmstuIdDataTextStyle;

  @override
  TextStyle get expiredAtTextStyle => _bmstuIdDataTextStyle;

  static const _bmstuIdDataTextStyle = TextStyle(
    fontSize: 15,
    height: 24 / 15,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.w500,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get authorizationLabelTextStyle => const TextStyle(
    fontSize: 18,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.w500,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get grayButtonTextStyle => const TextStyle(
    fontSize: 16,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.w700,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  Color get qrBackgroundColor => ColorsPalette.BACK_FOR_ALL;

  @override
  Color get qrForegroundColor => ColorsPalette.TEXT;
}

class QrCodeLightTheme extends IQrCodeTheme {
  const QrCodeLightTheme();

  @override
  TextStyle get whyNeedQrTextStyle => const TextStyle(
        fontSize: 15,
        color: ColorsPalette.TEXT,
        fontWeight: TextThemeProperties.w700,
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
      );

  @override
  TextStyle get retryTextStyle => const TextStyle(
    fontSize: 15,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.w500,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get userNameTextStyle => const TextStyle(
    fontSize: 15,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.w700,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get accessStatusTextStyle => _bmstuIdDataTextStyle;

  @override
  TextStyle get expiredAtTextStyle => _bmstuIdDataTextStyle;

  static const _bmstuIdDataTextStyle = TextStyle(
    fontSize: 15,
    height: 24 / 15,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.w500,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get authorizationLabelTextStyle => const TextStyle(
    fontSize: 18,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.w500,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get grayButtonTextStyle => const TextStyle(
    fontSize: 16,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.w700,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  Color get qrBackgroundColor => ColorsPalette.BACK_FOR_ALL;

  @override
  Color get qrForegroundColor => ColorsPalette.TEXT;
}
