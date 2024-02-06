import 'package:bbmstu_app/src/core/widgets/dialog_with_blur.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:app_settings/app_settings.dart' as system;

Future<void> showMoveToSystemSettingsDialog(BuildContext context, ImageSource imageSource) {
  return showGeneralDialog<void>(
    context: context,
    barrierColor: Colors.transparent,
    pageBuilder: (buildContext, animation, secondaryAnimation) {
      switch (imageSource) {
        case ImageSource.camera:
          return const MoveToSystemSettingsDialog.camera();
        case ImageSource.gallery:
          return const MoveToSystemSettingsDialog.gallery();
      }
    }
  );
}

@immutable
class MoveToSystemSettingsDialog extends StatelessWidget {
  final String imageSource;

  const MoveToSystemSettingsDialog.camera({
    Key? key,
  })  : imageSource = 'камере',
        super(key: key);

  const MoveToSystemSettingsDialog.gallery({
    Key? key,
  })  : imageSource = 'галерее',
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.settingsTheme.confirmLogoutViewTheme;
    return DialogWithBlurTwoSection(
      backgroundColor: theme.backgroundColor,
      dividerColor: theme.dividerColor,
      firstChild: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          horizontal: 14 * devScale,
        ),
        child: Text(
          'Приложению требуется разрешение на доступ к $imageSource.\nПерейти в настройки?',
          style: theme.questionTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
      secondChild: Row(
        children: [
          Expanded(
            child: DialogButton(
              text: 'Да',
              textStyle: theme.confirmTextStyle,
              onTap: () async {
                await system.AppSettings.openAppSettings();
                Navigator.of(context).pop();
              },
            ),
          ),
          Container(
            width: 1,
            color: theme.dividerColor,
          ),
          Expanded(
            child: DialogButton(
              text: 'Нет',
              textStyle: theme.dismissTextStyle,
              onTap: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(
      properties
        ..add(
          StringProperty(
            'description',
            'MoveToSystemSettingsDialog StatelessWidget',
          ),
        ),
    );
  }
}
