import 'package:bbmstu_app/src/core/widgets/dialog_with_blur.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';

class LoginErrorView extends StatelessWidget {
  const LoginErrorView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.loginTheme;
    final failedLoginTheme = theme.failedLoginTheme;
    final dialogLoginTheme = theme.dialogLoginTheme;
    return DialogWithBlurTwoSection(
      backgroundColor: dialogLoginTheme.backgroundColor,
      dividerColor: dialogLoginTheme.dividerColor,
      firstChild: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          horizontal: 14 * devScale,
        ),
        child: Text(
          'Что-то пошло не так,\nпопробуйте ещё раз позже',
          style: failedLoginTheme.messageTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
      secondChild: DialogButton(
        text: 'Понятно',
        textStyle: failedLoginTheme.buttonTextStyle,
        onTap: Navigator.of(context).pop,
      ),
    );
  }
}
