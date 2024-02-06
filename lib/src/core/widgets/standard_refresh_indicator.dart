import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';

typedef RefreshCallback = Future<void> Function();

abstract class StandardRefreshIndicator implements StatelessWidget {
  const factory StandardRefreshIndicator({
    Key? key,
    required Widget child,
    required RefreshCallback onRefresh,
  }) = StandardRefreshIndicatorWrap;

  const factory StandardRefreshIndicator.withScroll({
    Key? key,
    required Widget child,
    required RefreshCallback onRefresh,
  }) = StandardRefreshIndicatorWithScroll;

  const factory StandardRefreshIndicator.stream({
    Key? key,
    required Widget child,
    required VoidCallback onRefresh,
    required Stream<StandardRefreshIndicatorState> stream,
  }) = StandardRefreshIndicatorStream;
}

class StandardRefreshIndicatorWrap extends StatelessWidget implements StandardRefreshIndicator {
  final Widget child;
  final RefreshCallback onRefresh;

  const StandardRefreshIndicatorWrap({
    Key? key,
    required this.child,
    required this.onRefresh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.primitivesTheme.refreshIndicatorTheme;
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: child,
      backgroundColor: theme.backgroundColor,
      color: theme.ringColor,
    );
  }
}

class StandardRefreshIndicatorWithScroll extends StatelessWidget implements StandardRefreshIndicator {
  final Widget child;
  final RefreshCallback onRefresh;

  const StandardRefreshIndicatorWithScroll({
    Key? key,
    required this.child,
    required this.onRefresh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardRefreshIndicatorWrap(
      onRefresh: onRefresh,
      child: ListView(
        children: [child],
      ),
    );
  }
}

enum StandardRefreshIndicatorState {
  loading,
  idle,
}

extension RefreshIndicatorStateExtension on StandardRefreshIndicatorState {
  bool get isLoading => this == StandardRefreshIndicatorState.loading;

  bool get isIdle => this == StandardRefreshIndicatorState.idle;
}

class StandardRefreshIndicatorStream extends StatelessWidget implements StandardRefreshIndicator {
  final Widget child;
  final VoidCallback onRefresh;
  final Stream<StandardRefreshIndicatorState> stream;

  const StandardRefreshIndicatorStream({
    Key? key,
    required this.child,
    required this.onRefresh,
    required this.stream,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardRefreshIndicatorWrap(
      onRefresh: () {
        onRefresh();
        return stream.firstWhere((element) => element.isIdle);
      },
      child: child,
    );
  }
}
