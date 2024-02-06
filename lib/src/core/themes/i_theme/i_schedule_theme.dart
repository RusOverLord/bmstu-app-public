import 'package:bbmstu_app/src/core/themes/widgets/colors_pallete.dart';
import 'package:bbmstu_app/src/core/themes/widgets/text_theme_properties.dart';
import 'package:flutter/material.dart';

abstract class IScheduleTheme {
  const IScheduleTheme();

  IWeekBarTheme get weekBarTheme;

  ILessonTheme get lessonTheme;

  ITimerTheme get timerTheme;

  ScheduleEditingTheme get editingTheme => const ScheduleEditingTheme();

  ILessonEditingTheme get lessonEditingTheme;
}

class ScheduleLightTheme extends IScheduleTheme {
  const ScheduleLightTheme();

  @override
  WeekBarLightTheme get weekBarTheme => const WeekBarLightTheme();

  @override
  LessonLightTheme get lessonTheme => const LessonLightTheme();

  @override
  TimerLightTheme get timerTheme => const TimerLightTheme();

  @override
  LessonEditingLightTheme get lessonEditingTheme =>
      const LessonEditingLightTheme();
}

class ScheduleDarkTheme extends IScheduleTheme {
  const ScheduleDarkTheme();

  @override
  WeekBarDarkTheme get weekBarTheme => const WeekBarDarkTheme();

  @override
  LessonDarkTheme get lessonTheme => const LessonDarkTheme();

  @override
  TimerDarkTheme get timerTheme => const TimerDarkTheme();

  @override
  LessonEditingDarkTheme get lessonEditingTheme =>
      const LessonEditingDarkTheme();
}

abstract class IWeekBarTheme {
  IDayTabTheme get dayTabTheme;

  TextStyle get weekTypesTextStyle;
}

class WeekBarLightTheme implements IWeekBarTheme {
  const WeekBarLightTheme();

  @override
  DayTabLightTheme get dayTabTheme => const DayTabLightTheme();

  @override
  TextStyle get weekTypesTextStyle => const TextStyle(
    fontSize: 14,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}

class WeekBarDarkTheme implements IWeekBarTheme {
  const WeekBarDarkTheme();

  @override
  DayTabDarkTheme get dayTabTheme => const DayTabDarkTheme();

  @override
  TextStyle get weekTypesTextStyle => const TextStyle(
    fontSize: 14,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}

abstract class IDayTabTheme {
  ///[Стиль выбранного]
  TextStyle get selectedTextStyle;

  ///[Стиль не выбранного]
  TextStyle get unSelectedTextStyle;

  ///[Стиль сегодня]
  TextStyle get todayTextStyle;

  ///[Фон выбранного]
  Color get selectedBackgroundColor;

  ///[Цвет окружности]
  Color get borderColor;

  ///[Цвет сегодня]
  Color get todayBorderColor;
}

class DayTabLightTheme implements IDayTabTheme {
  const DayTabLightTheme();

  ///[Стиль выбранного текста]
  @override
  TextStyle get selectedTextStyle => const TextStyle(
    fontSize: 13,
    height: 1,
    color: ColorsPalette.BACK,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_MONTSERRAT,
  );

  ///[Стиль не выбранного текста]
  @override
  TextStyle get unSelectedTextStyle => const TextStyle(
    fontSize: 13,
    height: 1,
    color: ColorsPalette.GRAY,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_MONTSERRAT,
  );

  ///[Стиль текста для сегодня]
  @override
  TextStyle get todayTextStyle => const TextStyle(
    fontSize: 13,
    height: 1,
    color: ColorsPalette.BLUE_FROM_SITE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_MONTSERRAT,
  );

  ///[Цвет не выбранного обводки]
  @override
  Color get borderColor => ColorsPalette.GRAY;

  ///[Цвет фона, выбранного]
  @override
  Color get selectedBackgroundColor => ColorsPalette.BLUE_FROM_SITE;

  ///[Цвет сегодня]
  @override
  Color get todayBorderColor => ColorsPalette.BLUE_FROM_SITE;
}

class DayTabDarkTheme implements IDayTabTheme {
  const DayTabDarkTheme();

  ///[Стиль выбранного текста]
  @override
  TextStyle get selectedTextStyle => const TextStyle(
    fontSize: 13,
    height: 1,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_MONTSERRAT,
  );

  ///[Стиль не выбранного текста]
  @override
  TextStyle get unSelectedTextStyle => const TextStyle(
    fontSize: 13,
    height: 1,
    color: ColorsPalette.GRAY_TEXT,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_MONTSERRAT,
  );

  ///[Стиль текста для сегодня]
  @override
  TextStyle get todayTextStyle => const TextStyle(
    fontSize: 13,
    height: 1,
    color: ColorsPalette.BLUE_TEXT_APPLE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_MONTSERRAT,
  );

  ///[Цвет не выбранного обводки]
  @override
  Color get borderColor => ColorsPalette.GRAY_TEXT;

  ///[Цвет фона, выбранного]
  @override
  Color get selectedBackgroundColor => ColorsPalette.BLUE_TEXT_APPLE;

  ///[Цвет сегодня]
  @override
  Color get todayBorderColor => ColorsPalette.BLUE_TEXT_APPLE;
}

abstract class ILessonTheme {
  const ILessonTheme();

  TextStyle get timeTextStyle;

  TextStyle get nameTextStyle;

  TextStyle get whomTextStyle;

  TextStyle get cabinetTextStyle;

  Color get backgroundColor;

  Color get dividerColor;

  TextStyle get undefinedTeacherStyle => const TextStyle(
    fontSize: 12,
    height: 1.2,
    color: ColorsPalette.GRAY,
    fontWeight: TextThemeProperties.medium,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  Color get undefinedCabinetColor => ColorsPalette.GRAY;
}

class LessonLightTheme extends ILessonTheme {
  const LessonLightTheme();

  // [Серый, время]
  @override
  TextStyle get timeTextStyle => const TextStyle(
    fontSize: 12,
    height: 1.1,
    color: ColorsPalette.BLUE_FROM_SITE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  // [Белый, название предмета]
  @override
  TextStyle get nameTextStyle => const TextStyle(
    fontSize: 14,
    height: 1.2,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.bold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  // [Серый, группа/преподаватель]
  @override
  TextStyle get whomTextStyle => const TextStyle(
    fontSize: 12,
    height: 1.2,
    color: ColorsPalette.BLUE_FROM_SITE,
    fontWeight: TextThemeProperties.semiBold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  // [Серый, кабинет]
  @override
  TextStyle get cabinetTextStyle => const TextStyle(
    fontSize: 12,
    height: 1.2,
    color: ColorsPalette.BLUE_FROM_SITE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  // [Синий светлый, фон]
  @override
  Color get backgroundColor => ColorsPalette.BACK;

  // [Серый тёмный, разделительная черта]
  @override
  Color get dividerColor => ColorsPalette.BLUE_FROM_SITE;
}

class LessonDarkTheme extends ILessonTheme {
  const LessonDarkTheme();

  // [Серый, время]
  @override
  TextStyle get timeTextStyle => const TextStyle(
    fontSize: 12,
    height: 1.1,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  // [Белый, название предмета]
  @override
  TextStyle get nameTextStyle => const TextStyle(
    fontSize: 14,
    height: 1.2,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.bold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  // [Серый, группа/преподаватель]
  @override
  TextStyle get whomTextStyle => const TextStyle(
    fontSize: 12,
    height: 1.2,
    color: ColorsPalette.BLUE_TEXT_APPLE,
    fontWeight: TextThemeProperties.semiBold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  // [Серый, кабинет]
  @override
  TextStyle get cabinetTextStyle => const TextStyle(
    fontSize: 12,
    height: 1.2,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  // [Синий светлый, фон]
  @override
  Color get backgroundColor => ColorsPalette.DARK_GRAY_FOR_BLOCK_APPLE;

  // [Серый тёмный, разделительная черта]
  @override
  Color get dividerColor => ColorsPalette.BLUE_TEXT_APPLE;
}

abstract class ILessonEditingTheme {
  const ILessonEditingTheme();

  static const _undefinedStyle12 = TextStyle(
    fontSize: 12,
    height: 1.2,
    color: _undefinedColor,
    fontWeight: TextThemeProperties.medium,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  static const _undefinedStyle14 = TextStyle(
    fontSize: 14,
    height: 1.2,
    color: _undefinedColor,
    fontWeight: TextThemeProperties.medium,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  static const _undefinedColor = ColorsPalette.GRAY;

  TextStyle get undefinedNameTextStyle => _undefinedStyle14;

  TextStyle get undefinedWhomTextStyle => _undefinedStyle12;

  TextStyle get undefinedCabinetTextStyle => _undefinedStyle12;

  TextStyle get undefinedTimeTextStyle => _undefinedStyle12;

  TextStyle get timeTextStyle;

  TextStyle get nameTextStyle;

  TextStyle get whomTextStyle;

  TextStyle get cabinetTextStyle;

  Color get backgroundColor;

  Color get timeIconColor => _undefinedColor;

  Color get cabinetIconColor => _undefinedColor;

  Color get dividerColor => ColorsPalette.BLUE_FROM_SITE;

  Color get whomBorderColor;

  Color get whomClearColor;

  TextStyle get confirmTextStyle;
}

class LessonEditingLightTheme extends ILessonEditingTheme {
  const LessonEditingLightTheme();

  // [Время]
  @override
  TextStyle get timeTextStyle => const TextStyle(
    fontSize: 12,
    height: 1.1,
    color: ColorsPalette.BLUE_FROM_SITE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  // [Название предмета]
  @override
  TextStyle get nameTextStyle => const TextStyle(
    fontSize: 14,
    height: 1.2,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.bold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  // [Группа/преподаватель]
  @override
  TextStyle get whomTextStyle => const TextStyle(
    fontSize: 12,
    height: 1,
    color: ColorsPalette.BLUE_FROM_SITE,
    fontWeight: TextThemeProperties.semiBold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  // [Кабинет]
  @override
  TextStyle get cabinetTextStyle => const TextStyle(
    fontSize: 12,
    height: 1.2,
    color: ColorsPalette.BLUE_FROM_SITE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  // [Фон]
  @override
  Color get backgroundColor => ColorsPalette.BACK;

  // [Обводка]
  @override
  Color get whomBorderColor => ColorsPalette.BLUE_FROM_SITE;

  // [Иконка удаления]
  @override
  Color get whomClearColor => const Color.fromRGBO(121, 121, 121, 1);

  // [Кнопка подтверждения изменений]
  @override
  TextStyle get confirmTextStyle => const TextStyle(
    fontSize: 17,
    height: 1.2,
    color: ColorsPalette.BLUE_FROM_SITE,
    fontWeight: TextThemeProperties.bold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}

class LessonEditingDarkTheme extends ILessonEditingTheme {
  const LessonEditingDarkTheme();

  // [Время]
  @override
  TextStyle get timeTextStyle => const TextStyle(
    fontSize: 12,
    height: 1.1,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  // [Название предмета]
  @override
  TextStyle get nameTextStyle => const TextStyle(
    fontSize: 14,
    height: 1.2,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.bold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  // [Группа/преподаватель]
  @override
  TextStyle get whomTextStyle => const TextStyle(
    fontSize: 12,
    height: 1,
    color: ColorsPalette.BLUE_TEXT_APPLE,
    fontWeight: TextThemeProperties.semiBold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  // [Кабинет]
  @override
  TextStyle get cabinetTextStyle => const TextStyle(
    fontSize: 12,
    height: 1.2,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  // [Фон]
  @override
  Color get backgroundColor => ColorsPalette.DARK_GRAY_FOR_BLOCK_APPLE;

  // [Обводка]
  @override
  Color get whomBorderColor => ColorsPalette.BLUE_TEXT_APPLE;

  // [Иконка удаления]
  @override
  Color get whomClearColor => ColorsPalette.BLUE_TEXT_APPLE;

  // [Кнопка подтверждения изменений]
  @override
  TextStyle get confirmTextStyle => const TextStyle(
    fontSize: 17,
    height: 1.2,
    color: ColorsPalette.BLUE_TEXT_APPLE,
    fontWeight: TextThemeProperties.bold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}

abstract class ITimerTheme {
  // [Текущая пара]
  TextStyle get currentTextStyle;

  // [Следущая пара]
  TextStyle get nextTextStyle;

  // [Текущая пара]
  Color get currentColor;

  // [Следущая пара]
  Color get nextColor;

  Color get aboveSeparatorColor;

  Color get bottomSeparatorColor;
}

class TimerLightTheme implements ITimerTheme {
  const TimerLightTheme();

  // [Текущая пара]
  @override
  TextStyle get currentTextStyle => const TextStyle(
    fontSize: 12,
    height: 1.2,
    color: ColorsPalette.BACK,
    fontWeight: TextThemeProperties.bold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  // [Следущая пара]
  @override
  TextStyle get nextTextStyle => const TextStyle(
    fontSize: 12,
    height: 1.2,
    color: ColorsPalette.BACK,
    fontWeight: TextThemeProperties.bold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  // [Текущая пара]
  @override
  Color get currentColor => ColorsPalette.BLUE_FROM_SITE;

  // [Следущая пара]
  @override
  Color get nextColor => ColorsPalette.BLUE_FROM_SITE;

  @override
  Color get aboveSeparatorColor => ColorsPalette.GREEN;

  @override
  Color get bottomSeparatorColor => ColorsPalette.BBLUE;
}

class TimerDarkTheme implements ITimerTheme {
  const TimerDarkTheme();

  // [Текущая пара]
  @override
  TextStyle get currentTextStyle => const TextStyle(
    fontSize: 12,
    height: 1.2,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.bold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  // [Следущая пара]
  @override
  TextStyle get nextTextStyle => const TextStyle(
    fontSize: 12,
    height: 1.2,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.bold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  // [Текущая пара]
  @override
  Color get currentColor => ColorsPalette.BLUE_TEXT_APPLE;

  // [Следущая пара]
  @override
  Color get nextColor => ColorsPalette.BLUE_TEXT_APPLE;

  @override
  Color get aboveSeparatorColor => ColorsPalette.GREEN_APPLE;

  @override
  Color get bottomSeparatorColor => ColorsPalette.BBLUE;
}

class ScheduleEditingTheme {
  const ScheduleEditingTheme();

  TextStyle get addLessonButtonTextStyle => const TextStyle(
        fontSize: 16,
        height: 1.0,
        color: ColorsPalette.BLUE_FROM_SITE,
        fontWeight: TextThemeProperties.bold,
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
      );

  IconThemeData get addLessonButtonIconTheme => const IconThemeData(
        size: 30,
        color: ColorsPalette.BLUE_FROM_SITE,
      );

  Color get addLessonButtonColor => ColorsPalette.BLUE_FROM_SITE;
}
