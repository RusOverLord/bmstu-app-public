import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';

final _borderRadius = BorderRadius.all(Radius.circular(10.0 * devScale));

final _shadow = BoxShadow(
  color: Colors.grey.withOpacity(0.2),
  spreadRadius: 2 * devScale,
  blurRadius: 4 * devScale,
);

class StandardRoundedWrap extends StatelessWidget {
  final Widget child;
  final bool clipped;
  final Color? color;

  const StandardRoundedWrap({
    Key? key,
    required this.child,
    this.clipped = true,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var current = child;

    if (clipped) {
      current = ClipRRect(
        borderRadius: _borderRadius,
        child: child,
      );
    }

    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        borderRadius: _borderRadius,
        boxShadow: context.theme.isLight ? [_shadow] : null,
      ),
      child: current,
    );
  }
}

class StandardListRoundedWrap extends StatelessWidget {
  final List<Widget> children;
  final double? itemSpacing;

  const StandardListRoundedWrap({
    Key? key,
    required this.children,
    this.itemSpacing,
  }) : super(key: key);

  double get itemSpacingDefault => 2.0 * devScale;

  @override
  Widget build(BuildContext context) {
    if (children.isEmpty) {
      return const SizedBox();
    }

    return StandardRoundedWrap(
      child: Wrap(
        runSpacing: itemSpacing ?? itemSpacingDefault,
        children: children,
      ),
    );
  }
}
