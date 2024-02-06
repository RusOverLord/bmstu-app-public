import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/widgets/standard_button.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

@immutable
class _Button extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final Color color;
  final double paddingMultiple;
  final VoidCallback onTap;

  const _Button({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.color,
    required this.paddingMultiple,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: StandardButton(
        onTap: onTap,
        color: color,
        borderRadius: BorderRadius.circular(6 * devScale),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: paddingMultiple * devScale,
          ),
          child: Text(
            text,
            style: textStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

@immutable
class BlueButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double paddingMultiple;

  const BlueButton.p7({
    Key? key,
    required this.text,
    required this.onTap,
  })  : paddingMultiple = 7,
        super(key: key);

  const BlueButton.p13({
    Key? key,
    required this.text,
    required this.onTap,
  })  : paddingMultiple = 13,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.qrCodeTheme;
    return _Button(
      text: text,
      textStyle: theme.blueButtonTextStyle,
      color: theme.blueButtonColor,
      paddingMultiple: paddingMultiple,
      onTap: onTap,
    );
  }
}

@immutable
class GrayButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const GrayButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.qrCodeTheme;
    return _Button(
      text: text,
      textStyle: theme.grayButtonTextStyle,
      color: theme.grayButtonColor,
      paddingMultiple: 13,
      onTap: onTap,
    );
  }
}

@immutable
class UpdateDataButtonBlue extends StatelessWidget {
  final String text;
  final Future<void> Function(BuildContext context) onTap;

  const UpdateDataButtonBlue({
    Key? key,
    required this.text,
    required this.onTap,
  })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlueButton.p13(
      text: text,
      onTap: () => onTap(context),
    );
  }
}
