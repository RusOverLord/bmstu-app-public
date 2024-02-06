import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';

class ErrorLabel extends StatelessWidget {
  final String message;

  const ErrorLabel(
    this.message, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.primitivesTheme.alertsTheme;

    return Container(
      width: double.infinity,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: theme.backgroundGradient,
      ),
      child: Text(
        message,
        style: theme.textStyle,
      ),
    );
  }
}
