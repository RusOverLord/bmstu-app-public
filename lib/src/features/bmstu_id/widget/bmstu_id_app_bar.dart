import 'package:bbmstu_app/src/core/remote_settings/widgets/remote_settings_scope.dart';
import 'package:bbmstu_app/src/core/widgets/standard_app_bar.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:bbmstu_app/src/features/authorization/models/user_type.dart';
import 'package:bbmstu_app/src/features/authorization/widgets/authorization_scope.dart';
import 'package:flutter/material.dart';

import 'my_qr_code_label.dart';

@immutable
class BmstuIdAppBar extends StatelessWidget with StandardAppBarSizeMixin {
  const BmstuIdAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userType = AuthorizationScope.watchUserType(context);

    switch(userType) {
      case UserType.student:
        return const _BmstuIdAppBarStudent();
      case UserType.employee:
        return const _BmstuIdAppBarEmployee();
    }
  }
}

@immutable
class _BmstuIdAppBarStudent extends StatelessWidget {
  const _BmstuIdAppBarStudent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardAppBar(
      theme: StandardAppBarThemeData(
        leadingTheme: IconThemeData(
          color: context.theme.qrCodeTheme.myQrColor,
        ),
      ),
      child: const MyQrCodeLabel(),
    );
  }
}

@immutable
class _BmstuIdAppBarEmployee extends StatelessWidget {
  const _BmstuIdAppBarEmployee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardAppBar(
      child: Center(
        child: Builder(
          builder: (context) {
            final theme = context.theme.appBarTheme;
            final title = RemoteSettingsScope.watchBmstuIdTitle(context);
            return Text(
              title,
              style: theme.mainTextStyle,
            );
          }
        ),
      ),
    );
  }
}
