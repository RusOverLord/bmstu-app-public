import 'package:bbmstu_app/src/core/widgets/bottom_bar_broadcaster.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class BroadcasterListView<Page> implements StatelessWidget {
  const factory BroadcasterListView({
    Key? key,
    required Widget child,
  }) = _BroadcasterListViewCommon;

  const factory BroadcasterListView.builder({
    Key? key,
    required int itemCount,
    required ItemBuilderFunction itemBuilder,
    ScrollController? controller,
    EdgeInsets? padding,
  }) = _BroadcasterListViewBuilder;
}

class _BroadcasterListViewCommon<Page> extends HookWidget
    implements BroadcasterListView<Page> {
  final Widget child;

  const _BroadcasterListViewCommon({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useScrollController();
    useBottomBarBroadcaster<Page>(controller);
    return SingleChildScrollView(
      controller: controller,
      child: child,
    );
  }
}

typedef ItemBuilderFunction = Widget Function(BuildContext, int);

class _BroadcasterListViewBuilder<Page> extends HookWidget
    implements BroadcasterListView<Page> {
  final int itemCount;
  final ItemBuilderFunction itemBuilder;
  final ScrollController? controller;
  final EdgeInsets? padding;

  const _BroadcasterListViewBuilder({
    Key? key,
    required this.itemCount,
    required this.itemBuilder,
    this.controller,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = this.controller ?? useScrollController();
    useBottomBarBroadcaster<Page>(controller);

    return ListView.builder(
      padding: padding,
      controller: controller,
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}

void useBottomBarBroadcaster<Page>(ScrollController controller) {
  use(_BottomBarBroadcasterHook<Page>(controller));
}

class _BottomBarBroadcasterHook<Page> extends Hook<void> {
  final ScrollController controller;

  const _BottomBarBroadcasterHook(this.controller);

  @override
  _LifecycleHookState createState() => _LifecycleHookState<Page>();
}

class _LifecycleHookState<Page>
    extends HookState<void, _BottomBarBroadcasterHook<Page>>
    with WidgetsBindingObserver {
  late final IBottomBarBroadcaster broadcaster;

  void callback() {
    hook.controller.animateTo(
      0,
      duration: const Duration(milliseconds: 350),
      curve: Curves.decelerate,
    );
  }

  @override
  void initHook() {
    broadcaster = context.read(bottomBarBroadcasterProvider);
    broadcaster.addListener<Page>(callback);
    super.initHook();
  }

  @override
  void build(BuildContext context) {}

  @override
  void dispose() {
    broadcaster.removeListener<Page>(callback);
    super.dispose();
  }
}
