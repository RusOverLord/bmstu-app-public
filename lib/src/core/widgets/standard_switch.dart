import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/widgets/standard_button.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

final _iconSize = 22 * devScale;

class StandardSwitch extends HookWidget {
  final bool value;
  final String text;
  final IconData prefixIcon;
  final VoidCallback onTap;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final bool hasShadowIfLight;

  const StandardSwitch({
    Key? key,
    required this.value,
    required this.text,
    required this.prefixIcon,
    required this.onTap,
    this.backgroundColor,
    this.borderRadius,
    this.hasShadowIfLight = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.standardThemes.switchTheme;
    return StandardButton(
      color: backgroundColor,
      borderRadius: borderRadius,
      hasShadowIfLight: hasShadowIfLight,
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(
          left: 15 * devScale,
          right: 3 * devScale,
          top: 4 * devScale,
          bottom: 4 * devScale,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: <Widget>[
                SizedBox(
                  width: 35 * devScale,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      prefixIcon,
                      size: _iconSize,
                      color: theme.iconColor,
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    text,
                    style: theme.textStyle,
                  ),
                ),
              ],
            ),
            CupertinoSwitch(
              value: value,
              onChanged: (_) => onTap(),
              activeColor: theme.activeColor,
            ),
          ],
        ),
      ),
    );
  }
}
