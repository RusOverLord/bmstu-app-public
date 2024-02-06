import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/features/personal_data_permission/domain/permission_bloc.dart';
import 'package:bbmstu_app/src/core/widgets/indent.dart';
import 'package:bbmstu_app/src/core/widgets/standard_asset_image.dart';
import 'package:bbmstu_app/src/core/widgets/standard_blurred_background.dart';
import 'package:bbmstu_app/src/core/widgets/standard_button.dart';
import 'package:bbmstu_app/src/core/widgets/standard_icons.dart';
import 'package:flutter/material.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'personal_data_permission_scope.dart';

@immutable
class PermissionDialog extends ConsumerWidget {
  const PermissionDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final theme = context.theme.personalDataPermissionTheme;
    return PermissionDialogContainer(
      child: Padding(
        padding: EdgeInsets.only(
          top: 8 * devScale,
          bottom: 16 * devScale,
          left: 16 * devScale,
          right: 8 * devScale,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Align(
              alignment: Alignment.centerRight,
              child: CloseIcon(),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 8 * devScale,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Согласие на обработку персональных данных',
                    style: theme.titleTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Indent.vertical(24 * devScale),
                  const CheckBoxWithText(),
                  Indent.vertical(22 * devScale),
                  const ContinueButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

@immutable
class PermissionDialogContainer extends StatelessWidget {
  final Widget child;

  const PermissionDialogContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.personalDataPermissionTheme;
    return StandardBlurredBackground(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20 * devScale,
        ),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10.0 * devScale)),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: theme.backgroundColor,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(ImageAsset.personal_data_permission.getAsset()),
                ),
              ),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}

@immutable
class CheckBoxWithText extends StatelessWidget {
  const CheckBoxWithText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.personalDataPermissionTheme;
    return GestureDetector(
      onTap: () => PersonalDataPermissionScope.readBloc(context).add(const PermissionEvent.reverseCheck()),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CheckBox(),
          Indent.horizontal(12 * devScale),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                right: 6 * devScale,
              ),
              child: Text(
                'Я даю своё согласие на обработку моих персональных данных в соответствии с законом № 152-ФЗ "О персональных данных" от 27.07.2006',
                style: theme.paragraphTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

@immutable
class CheckBox extends StatelessWidget {
  const CheckBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.personalDataPermissionTheme;
    final checked = PersonalDataPermissionScope.watchState(context).checked;
    final color = checked ? theme.activeColor : theme.inactiveColor;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(7.0 * devScale)),
      ),
      child: Padding(
        padding: EdgeInsets.all(2 * devScale),
        child: Icon(
          Icons.check,
          size: 20 * devScale,
          color: Colors.white,
        ),
      ),
    );
  }
}

@immutable
class ContinueButton extends StatelessWidget {
  const ContinueButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.personalDataPermissionTheme;
    final checked = PersonalDataPermissionScope.watchState(context).checked;
    return IgnorePointer(
      ignoring: !checked,
      child: SizedBox(
        width: double.infinity,
        child: StandardButton(
          onTap: () => PersonalDataPermissionScope.confirm(context),
          color: checked ? theme.activeColor : theme.inactiveColor,
          borderRadius: BorderRadius.circular(6 * devScale),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 13 * devScale,
            ),
            child: Text(
              'Продолжить',
              style: checked ? theme.activeButtonTextStyle : theme.inactiveButtonTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

@immutable
class CloseIcon extends StatelessWidget {
  const CloseIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.personalDataPermissionTheme;
    return GestureDetector(
      onTap: Navigator.of(context).pop,
      child: Material(
        color: Colors.transparent,
        type: MaterialType.button,
        child: Padding(
          padding: EdgeInsets.all(8.0 * devScale),
          child: Icon(
            StandardIcons.close,
            color: theme.closeColor,
            size: 15 * devScale,
          ),
        ),
      ),
    );
  }
}
