import 'package:bbmstu_app/src/core/widgets/standard_icons.dart';
import 'package:bbmstu_app/src/features/settings/widgets/settings_list_view.dart';
import 'package:bbmstu_app/src/core/widgets/standard_rounded_wrap.dart';
import 'package:flutter/material.dart';

import 'about_app_screen.dart';

@immutable
class AboutAppButton extends StatelessWidget {
  const AboutAppButton({
    Key? key,
  })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardRoundedWrap(
      child: SettingsItemView(
        text: 'О приложении',
        icon: StandardIcons.info,
        onTap: () => showAboutAppDialog(context),
      ),
    );
  }
}
