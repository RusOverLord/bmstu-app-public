import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:bbmstu_app/src/core/widgets/standard_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract class OnboardingAppBar implements PreferredSizeWidget {
  const factory OnboardingAppBar.empty() = _OnboardingAppBarEmpty;

  const factory OnboardingAppBar.withBack() = _OnboardingAppBarWithBack;

  const factory OnboardingAppBar.withClose() = _OnboardingAppBarWithClose;
}

@immutable
class _OnboardingAppBarEmpty extends StatelessWidget with StandardAppBarSizeMixin implements OnboardingAppBar {
  const _OnboardingAppBarEmpty({
    Key? key,
  })  : super(key: key);

  @override
  Widget build(BuildContext context) => const StandardAppBar(
    showDivider: false,
    showPop: false,
  );
}

@immutable
class _OnboardingAppBarWithBack extends StatelessWidget with StandardAppBarSizeMixin implements OnboardingAppBar {
  const _OnboardingAppBarWithBack({
    Key? key,
  })  : super(key: key);

  @override
  Widget build(BuildContext context) => const StandardAppBar(
    showDivider: false,
  );
}

@immutable
class _OnboardingAppBarWithClose extends StatelessWidget with StandardAppBarSizeMixin implements OnboardingAppBar {
  const _OnboardingAppBarWithClose({
    Key? key,
  })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardAppBar(
      showDivider: false,
      showPop: false,
      child: const Align(
        alignment: Alignment.centerRight,
        child: PopButton.close(),
      ),
      theme: StandardAppBarThemeData(
        actionTheme: IconThemeData(
          size: 15 * devScale,
          color: context.theme.firstOpenTheme.closeColor,
        ),
      ),
    );
  }
}

