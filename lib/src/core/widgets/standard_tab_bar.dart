import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final _height = 32 * devScale;

final _tabBarContextScopedProvider = ScopedProvider<_TabBarContext>(
  (ref) => throw UnimplementedError(),
);

final _selectedScopedProvider = ScopedProvider<bool>(
  (ref) => throw UnimplementedError(),
);

final _tabNotifierScopedProvider = ScopedProvider<_TabNotifier>(
  (ref) => throw UnimplementedError(),
);

class StandardTabBar extends StatelessWidget {
  late final _TabBarContext tabBarContext;

  StandardTabBar({
    Key? key,
    required List<String> tabs,
    required TabController tabController,
  }) : super(key: key) {
    tabBarContext = _TabBarContext(tabs, tabController);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20 * devScale,
      ),
      child: SizedBox(
        height: _height,
        child: ProviderScope(
          overrides: [
            _tabNotifierScopedProvider.overrideAs(
              (watch) => watch(_tabNotifierProvider(tabBarContext).notifier),
            ),
            _tabBarContextScopedProvider.overrideWithValue(tabBarContext),
          ],
          child: RepaintBoundary(
            child: Stack(
              children: [
                const _BackgroundBorders(),
                const _AnimatedDecoration(),
                Row(
                  children: mapTabs().toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Iterable<Widget> mapTabs() sync* {
    final tabs = tabBarContext.tabs;
    for (int i = 0; i < tabs.length; i++) {
      yield ProviderScope(
        overrides: [
          _selectedScopedProvider.overrideAs(
            (watch) => watch(_tabNotifierProvider(tabBarContext))[i],
          ),
        ],
        child: _Tab(
          index: i,
          text: tabs[i],
        ),
      );
    }
  }
}

class _BackgroundBorders extends HookWidget {
  const _BackgroundBorders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.standardThemes.tabBarTheme;
    var tabsCount = useProvider(_tabBarContextScopedProvider).tabs.length;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: theme.inactiveBackground,
        border: Border.all(
          color: theme.borderColor,
          width: 1 * devScale,
        ),
        borderRadius: BorderRadius.circular(6 * devScale),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          tabsCount - 1,
          (index) => const _VerticalDivider(),
        ),
      ),
    );
  }
}

class _AnimatedDecoration extends HookWidget {
  const _AnimatedDecoration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabContext = useProvider(_tabBarContextScopedProvider);
    final tabs = tabContext.tabs;
    final animation = tabContext.controller.animation!;

    return LayoutBuilder(
      builder: (context, constrains) {
        final theme = context.theme.standardThemes.tabBarTheme;
        final width = constrains.maxWidth;
        final tabWidth = width / tabs.length + 4 * devScale;
        final endOffsetX = (width - tabWidth) / tabWidth / (tabs.length - 1);
        final offsetAnimation = Tween<Offset>(
          begin: Offset.zero,
          end: Offset(endOffsetX, 0.0),
        ).animate(animation);

        return SlideTransition(
          position: offsetAnimation,
          child: Container(
            width: tabWidth,
            decoration: BoxDecoration(
              color: theme.activeBackground,
              borderRadius: BorderRadius.circular(6 * devScale),
            ),
            height: _height,
          ),
        );
      },
    );
  }
}

class _Tab extends HookWidget {
  final int index;
  final String text;

  const _Tab({
    Key? key,
    required this.index,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.standardThemes.tabBarTheme;
    final selected = useProvider(_selectedScopedProvider);
    return Flexible(
      child: GestureDetector(
        onTap: () => context.read(_tabNotifierScopedProvider).onTap(index),
        child: Material(
          color: Colors.transparent,
          type: MaterialType.button,
          child: Center(
            child: Text(
              text,
              style: selected ? theme.activeStyle : theme.inactiveStyle,
            ),
          ),
        ),
      ),
    );
  }
}

class _VerticalDivider extends StatelessWidget {
  const _VerticalDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.standardThemes.tabBarTheme;
    return SizedBox(
      width: 1 * devScale,
      height: double.infinity,
      child: ColoredBox(
        color: theme.borderColor,
      ),
    );
  }
}

final _tabNotifierProvider = StateNotifierProvider.autoDispose
    .family<_TabNotifier, _State, _TabBarContext>(
  (ref, context) {
    return _TabNotifier(
      state: _State(context.controller.index),
      controller: context.controller,
    );
  },
);

class _TabBarContext with EquatableMixin {
  final List<String> tabs;
  final TabController controller;

  const _TabBarContext(this.tabs, this.controller);

  @override
  List<Object?> get props => [
        tabs,
        controller,
      ];
}

class _TabNotifier extends StateNotifier<_State> {
  final TabController controller;

  _TabNotifier({
    required _State state,
    required this.controller,
  }) : super(state) {
    controller.animation!.addListener(_animationValueListener);
  }

  void _animationValueListener() {
    final selectedIndex = controller.animation!.value.round();
    state = _State(selectedIndex);
  }

  void onTap(int index) {
    controller.animateTo(index);
  }
}

class _State with EquatableMixin {
  final int selectedIndex;

  const _State(this.selectedIndex);

  bool operator [](int index) {
    return index == selectedIndex;
  }

  @override
  List<Object?> get props => [
        selectedIndex,
      ];
}
