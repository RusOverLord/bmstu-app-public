import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/remote_settings/widgets/remote_settings_scope.dart';
import 'package:bbmstu_app/src/core/widgets/standard_icons.dart';
import 'package:bbmstu_app/src/core/widgets/indent.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';

@immutable
class MyQrCodeLabel extends StatelessWidget {
  const MyQrCodeLabel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.qrCodeTheme;
    return Row(
      children: [
        Builder(
          builder: (context) {
            final title = RemoteSettingsScope.watchBmstuIdTitle(context);
            return Text(
              title,
              style: theme.myQrTextStyle,
            );
          }
        ),
        Indent.horizontal(10 * devScale),
        Icon(
          StandardIcons.qr_code,
          size: 22 * devScale,
          color: theme.myQrColor,
        ),
      ],
    );
  }
}
