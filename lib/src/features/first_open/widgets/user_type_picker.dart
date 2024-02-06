import 'package:bbmstu_app/src/core/analytics.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:bbmstu_app/src/core/widgets/standard_asset_image.dart';
import 'package:bbmstu_app/src/core/widgets/indent.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/widgets/standard_button.dart';
import 'package:bbmstu_app/src/core/widgets/standard_rounded_wrap.dart';
import 'package:flutter/material.dart';

import 'onboarding.dart';

@immutable
class UserTypePicker extends StatelessWidget {
  const UserTypePicker({
    Key? key,
  })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    IAnalytics.instance.setCurrentScreen(screenName: 'FirstOpenScreen');
    final theme = context.theme.firstOpenTheme;
    return Material(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20 * devScale,
          ),
          child: Column(
            children: [
              const Spacer(flex: 91),
              Text(
                'Кто вы?',
                style: theme.whoAreYouTextStyle,
              ),
              Indent.vertical(44 * devScale),
              _ChooseUserTypeButton(
                text: "Я студент",
                asset: ImageAsset.user_type_student,
                onTap: () => showOnboardingStudent(context),
              ),
              Indent.vertical(16 * devScale),
              _ChooseUserTypeButton(
                text: "Я сотрудник",
                asset: ImageAsset.user_type_employee,
                onTap: () => showOnboardingEmployee(context),
              ),
              const Spacer(flex: 200),
              // const ChoosePostButton(
              //   text: "Я абитуриент",
              //   asset: ImageAsset.man_1,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ChooseUserTypeButton extends StatelessWidget {
  final String text;
  final ImageAsset asset;
  final VoidCallback onTap;

  const _ChooseUserTypeButton({
    Key? key,
    required this.text,
    required this.asset,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.firstOpenTheme;
    return StandardRoundedWrap(
      child: StandardButton(
        onTap: onTap,
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Indent.horizontal(20 * devScale),
              Text(
                text,
                style: theme.iAmTextStyle,
              ),
              const Spacer(),
              StandardAssetImage(
                height: 100 * devScale,
                fit: BoxFit.contain,
                imageAsset: asset,
              ),
              Indent.horizontal(20 * devScale),
            ],
          ),
        ),
      ),
    );
  }
}
