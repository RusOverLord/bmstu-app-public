import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/remote_settings/widgets/remote_settings_scope.dart';
import 'package:bbmstu_app/src/core/widgets/dialog_with_blur.dart';
import 'package:bbmstu_app/src/core/widgets/indent.dart';
import 'package:bbmstu_app/src/core/widgets/standard_asset_image.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:bbmstu_app/src/core/widgets/standard_button.dart';
import 'package:bbmstu_app/src/features/authorization/widgets/authorization_scope.dart';
import 'package:flutter/material.dart';

import 'buttons.dart';

@immutable
class HasNotLoginView extends StatelessWidget {
  const HasNotLoginView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.qrCodeTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const StandardAssetImage(
          themed: true,
          imageAsset: ImageAsset.qr_authorization,
        ),
        Builder(builder: (context) {
          final bmstuIdTitle = RemoteSettingsScope.watchBmstuIdTitle(context);
          return Text(
            'Чтобы добавить $bmstuIdTitle,\nнеобходимо авторизоваться\nв приложении',
            textAlign: TextAlign.center,
            style: theme.authorizationLabelTextStyle,
          );
        }),
        Indent.vertical(40 * devScale),
        BlueButton.p13(
          text: 'Авторизация',
          onTap: () => AuthorizationScope.getUserOrLogin(context),
        ),
        Indent.vertical(8 * devScale),
        Builder(builder: (context) {
          final bmstuIdTitle = RemoteSettingsScope.watchBmstuIdTitle(context);
          return GrayButton(
            text: 'Для чего мне $bmstuIdTitle?',
            onTap: () => _showWhyNeedQrDialog(context),
          );
        }),
      ],
    );
  }
}

Future<void> _showWhyNeedQrDialog(BuildContext context) {
  return showGeneralDialog<void>(
    context: context,
    barrierColor: Colors.transparent,
    pageBuilder: (buildContext, animation, secondaryAnimation) {
      return const _WhyNeedQrDialog();
    },
  );
}

@immutable
class _WhyNeedQrDialog extends StatelessWidget {
  const _WhyNeedQrDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dialogLoginTheme = context.theme.loginTheme.dialogLoginTheme;
    return DialogWithBlur(
      child: SizedBox(
        width: 278 * devScale,
        child: ColoredBox(
          color: dialogLoginTheme.backgroundColor,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 16 * devScale,
                  horizontal: 10 * devScale,
                ),
                child: const _DialogText(),
              ),
              ColoredBox(
                color: dialogLoginTheme.dividerColor,
                child: const SizedBox(
                  height: 1,
                  width: double.infinity,
                ),
              ),
              const _DialogButton(),
            ],
          ),
        ),
      ),
    );
  }
}

@immutable
class _DialogText extends StatelessWidget {
  const _DialogText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final qrCodeTheme = context.theme.qrCodeTheme;
    final bmstuIdTitle = RemoteSettingsScope.watchBmstuIdTitle(context);
    final text =
        'Для посещения учебных занятий и мероприятий, проходящих на территории МГТУ им. Н.Э. Баумана, необходимо иметь $bmstuIdTitle.\n\n$bmstuIdTitle действует только на территории МГТУ им. Н.Э. Баумана и не является QR-кодом, получаемым на сайте Госуслуг.';
    return Text(
      text,
      style: qrCodeTheme.whyNeedQrTextStyle,
      textAlign: TextAlign.center,
    );
  }
}

@immutable
class _DialogButton extends StatelessWidget {
  const _DialogButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final failedLoginTheme = context.theme.loginTheme.failedLoginTheme;
    return StandardButton(
      onTap: () => Navigator.of(context).pop(),
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 11 * devScale,
          ),
          child: Text(
            'Понятно',
            style: failedLoginTheme.buttonTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
