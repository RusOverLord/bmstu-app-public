import 'package:flutter/material.dart';
import '../widgets/colors_pallete.dart';
import '../widgets/text_theme_properties.dart';

abstract class IFavoritesTheme {
  IFavoritesListTheme get listTheme;
}

class FavoritesLightTheme implements IFavoritesTheme {
  const FavoritesLightTheme();

  @override
  FavoritesListLightTheme get listTheme => const FavoritesListLightTheme();
}

class FavoritesDarkTheme implements IFavoritesTheme {
  const FavoritesDarkTheme();

  @override
  FavoritesListDarkTheme get listTheme => const FavoritesListDarkTheme();
}

abstract class IFavoritesListTheme {
  IFavoritesItemTheme get itemTheme;

  IFavoritesHeaderTheme get headerTheme;
}

class FavoritesListLightTheme implements IFavoritesListTheme {
  const FavoritesListLightTheme();

  @override
  FavoritesItemLightTheme get itemTheme => const FavoritesItemLightTheme();

  @override
  FavoritesHeaderLightTheme get headerTheme => const FavoritesHeaderLightTheme();
}

class FavoritesListDarkTheme implements IFavoritesListTheme {
  const FavoritesListDarkTheme();

  @override
  FavoritesItemDarkTheme get itemTheme => const FavoritesItemDarkTheme();

  @override
  FavoritesHeaderDarkTheme get headerTheme => const FavoritesHeaderDarkTheme();
}

abstract class IFavoritesItemTheme {
  Color get dismissibleBackgroundColor;
  Color get dismissibleForegroundColor;
}

class FavoritesItemLightTheme implements IFavoritesItemTheme {
  const FavoritesItemLightTheme();

  @override
  Color get dismissibleBackgroundColor => ColorsPalette.TEXT0;

  @override
  Color get dismissibleForegroundColor => ColorsPalette.BACK;
}

class FavoritesItemDarkTheme implements IFavoritesItemTheme {
  const FavoritesItemDarkTheme();

  @override
  Color get dismissibleBackgroundColor => ColorsPalette.GRAY_1_APPLE;

  @override
  Color get dismissibleForegroundColor => ColorsPalette.WHITE_TEXT_APPLE;
}

abstract class IFavoritesHeaderTheme {
  TextStyle get textStyle;
}

class FavoritesHeaderLightTheme implements IFavoritesHeaderTheme {
  const FavoritesHeaderLightTheme();

  @override
  TextStyle get textStyle => const TextStyle(
    fontSize: 21,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}

class FavoritesHeaderDarkTheme implements IFavoritesHeaderTheme {
  const FavoritesHeaderDarkTheme();

  @override
  TextStyle get textStyle => const TextStyle(
    fontSize: 21,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}
