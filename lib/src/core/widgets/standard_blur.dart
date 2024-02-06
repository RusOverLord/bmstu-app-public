import 'dart:ui';
import 'package:flutter/material.dart';

class StandardBlur extends StatelessWidget {
  final Widget child;
  final double opacity;

  const StandardBlur({
    Key? key,
    required this.child,
    this.opacity = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 15 * opacity,
        sigmaY: 15 * opacity,
      ),
      child: child,
    );
  }
}
