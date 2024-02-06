import 'package:bbmstu_app/src/core/widgets/standard_blurred_background.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/widgets/standard_button.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';

class Dialog extends StatelessWidget {
  final Widget child;

  const Dialog({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLight = context.theme.isLight;

    Widget current = ClipRRect(
      borderRadius: BorderRadius.circular(10.0 * devScale),
      child: child,
    );

    if (isLight) {
      current = DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 10 * devScale,
              blurRadius: 10 * devScale,
            ),
          ],
        ),
        child: current,
      );
    }

    return current;
  }
}

class DialogWithBlur extends StatelessWidget {
  final Widget child;

  const DialogWithBlur({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardBlurredBackground(
      child: Center(
        child: Dialog(
          child: child,
        ),
      ),
    );
  }
}

class DialogTwoSection extends StatelessWidget {
  final Widget firstChild;
  final Widget secondChild;
  final Color backgroundColor;
  final Color dividerColor;

  const DialogTwoSection({
    Key? key,
    required this.firstChild,
    required this.secondChild,
    required this.backgroundColor,
    required this.dividerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        color: backgroundColor,
        width: 278 * devScale,
        height: 108 * devScale,
        child: Column(
          children: [
            Flexible(
              flex: 64,
              child: firstChild,
            ),
            Container(
              height: 1,
              color: dividerColor,
            ),
            Flexible(
              flex: 44,
              child: secondChild,
            ),
          ],
        ),
      ),
    );
  }
}

class DialogWithBlurTwoSection extends StatelessWidget {
  final Widget firstChild;
  final Widget secondChild;
  final Color backgroundColor;
  final Color dividerColor;

  const DialogWithBlurTwoSection({
    Key? key,
    required this.firstChild,
    required this.secondChild,
    required this.backgroundColor,
    required this.dividerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardBlurredBackground(
      child: Center(
        child: DialogTwoSection(
          firstChild: firstChild,
          secondChild: secondChild,
          backgroundColor: backgroundColor,
          dividerColor: dividerColor,
        ),
      ),
    );
  }
}

class DialogButton extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final VoidCallback onTap;

  const DialogButton({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardButton(
      child: Center(
        child: Text(
          text,
          style: textStyle,
          textAlign: TextAlign.center,
        ),
      ),
      onTap: onTap,
    );
  }
}
