import 'package:bbmstu_app/src/core/remote_settings/widgets/remote_settings_scope.dart';
import 'package:bbmstu_app/src/features/bmstu_id/widget/bmstu_id_screen.dart';
import 'package:bbmstu_app/src/features/bmstu_id/widget/my_qr_code_label.dart';
import 'package:bbmstu_app/src/core/widgets/standard_app_bar.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/schedule_bloc_scope.dart';
import 'package:flutter/material.dart';

@immutable
class ScheduleAppBarMain extends StatelessWidget with StandardAppBarSizeMixin {
  const ScheduleAppBarMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final whomName = ScheduleBlocScope.watch(context).schedule?.whom.nameView ?? '';
    final showQrButtonOnMain = RemoteSettingsScope.watchShowQrButtonOnMain(context);

    if (showQrButtonOnMain) {
      return StandardAppBar.title(
        title: whomName,
        action: AppBarAction(
          onTap: () => pushQrScreen(context),
          child: const MyQrCodeLabel(),
        ),
      );
    }

    return StandardAppBar.title(
      title: whomName,
    );
  }
}
