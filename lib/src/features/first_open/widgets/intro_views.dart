import 'package:bbmstu_app/src/core/remote_settings/widgets/remote_settings_scope.dart';
import 'package:bbmstu_app/src/core/widgets/onboarding/onboarding.dart';
import 'package:bbmstu_app/src/core/widgets/standard_asset_image.dart';
import 'package:charcode/html_entity.dart';
import 'package:flutter/widgets.dart';

extension StringExtension on String {
  String get nonBreaking => replaceAll(' ', String.fromCharCode($nbsp)); // избавляемся от nbsp в строке с МГТУ
}

Widget newsIntro() {
  return Intro(
    title: 'Новости',
    assetImage: const StandardAssetImage(
      imageAsset: ImageAsset.intro_4,
      themed: true,
    ),
    description: 'Будьте в курсе последних новостей ' + 'МГТУ им. Н. Э. Баумана'.nonBreaking,
  );
}

Widget ccIntro() {
  return Builder(
    builder: (context) {
      final bmstuIdTitle = RemoteSettingsScope.watchBmstuIdTitle(context);
      return Intro(
        title: bmstuIdTitle,
        assetImage: const StandardAssetImage(
          imageAsset: ImageAsset.cc_intro,
          themed: true,
        ),
        description: 'Получите $bmstuIdTitle для входа в университет',
      );
    }
  );
}

Widget favoritesIntro() {
  return const Intro(
    title: 'Избранное',
    assetImage: StandardAssetImage(
      imageAsset: ImageAsset.intro_3,
      themed: true,
    ),
    description: 'Добавляйте преподавателей и группы в избранное для быстрого доступа',
  );
}

Widget timetableIntro() {
  return const Intro(
    title: 'Расписание пар',
    assetImage: StandardAssetImage(
      imageAsset: ImageAsset.intro_1,
      themed: true,
    ),
    description: 'Смотрите расписание пар на текущую и следущую недели своей или чужой группы',
  );
}
