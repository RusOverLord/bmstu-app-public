import 'package:bbmstu_app/src/core/widgets/dialog_with_blur.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future<bool> showConfirmLogoutDialog(BuildContext context) async {
  return await showGeneralDialog<bool>(
    context: context,
    barrierColor: Colors.transparent,
    pageBuilder: (buildContext, animation, secondaryAnimation) {
      return const ConfirmLogoutDialog();
    },
  ) ?? false;
}

@immutable
class ConfirmLogoutDialog extends StatelessWidget {
  const ConfirmLogoutDialog({
    Key? key,
  })  : super(key: key);

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
          'Вы уверены, что хотите выйти из своего профиля?',
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
              onTap: () => Navigator.pop(context, true),
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
              onTap: () => Navigator.pop(context, false),
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
            'ConfirmLogoutDialog StatelessWidget',
          ),
        ),
    );
  }
}

