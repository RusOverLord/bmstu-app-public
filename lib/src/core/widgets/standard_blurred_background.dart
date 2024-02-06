import 'package:bbmstu_app/src/core/widgets/standard_blur.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';

class StandardBlurredBackground extends StatelessWidget {
  final Widget child;

  const StandardBlurredBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = context.theme.isDark;
    var current = child;

    if (isDark) {
      current = Material(
        type: MaterialType.canvas,
        color: Colors.black.withOpacity(0.4),
        child: current,
      );
    }

    return StandardBlur(
      child: Material(
        type: MaterialType.button,
        color: Colors.transparent,
        child: SizedBox.expand(
          child: current,
        ),
      ),
    );
  }
}
