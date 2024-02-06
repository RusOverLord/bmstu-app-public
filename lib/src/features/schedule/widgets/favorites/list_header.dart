import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';

@immutable
class ListHeader extends StatelessWidget {
  final String text;
  final bool visible;

  const ListHeader({
    Key? key,
    required this.text,
    required this.visible,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.favoritesTheme.listTheme.headerTheme;
    return _AnimatedOpacity(
      visible: visible,
      child: _AnimatedSize(
        visible: visible,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              text,
              style: theme.textStyle,
            ),
          ),
        ),
      ),
    );
  }
}

@immutable
class _AnimatedOpacity extends StatelessWidget {
  final Widget child;
  final bool visible;

  const _AnimatedOpacity({
    Key? key,
    required this.child,
    required this.visible,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 250),
      opacity: visible ? 1.0 : 0.0,
      child: child,
    );
  }
}

@immutable
class _AnimatedSize extends StatelessWidget {
  final Widget child;
  final bool visible;

  const _AnimatedSize({
    Key? key,
    required this.child,
    required this.visible,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 150),
      child: SizedBox(
        height: visible ? 50 : 0,
        child: child,
      ),
    );
  }
}
