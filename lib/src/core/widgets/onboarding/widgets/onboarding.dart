import 'package:flutter/material.dart';

import 'onboarding_app_bar.dart';

@immutable
class Onboarding extends StatelessWidget {
  final PreferredSizeWidget appBar;
  final Widget bottomBar;
  final List<Widget> pages;
  final bool fixLast;

  const Onboarding({
    Key? key,
    this.appBar = const OnboardingAppBar.empty(),
    required this.bottomBar,
    required this.pages,
    this.fixLast = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnboardingBase(
      pagesNumber: pages.length,
      appBar: appBar,
      builder: (context, tabController) {
        Widget current = Stack(
          children: [
            Positioned.fill(
              child: TabBarView(
                controller: tabController,
                children: pages,
              ),
            ),
            bottomBar,
          ],
        );

        if (fixLast) {
          return _FixLastPageBuilder(
            tabController: tabController,
            onFixLast: (context) => pages.last,
            onScrolling: (context) => current,
          );
        } else {
          return current;
        }
      },
    );
  }
}

@immutable
class OnboardingBase extends StatelessWidget {
  final PreferredSizeWidget appBar;
  final int pagesNumber;
  final Widget Function(BuildContext context, TabController tabController) builder;

  const OnboardingBase({
    Key? key,
    required this.appBar,
    required this.pagesNumber,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: pagesNumber,
      child: SafeArea(
        child: Scaffold(
          appBar: appBar,
          body: Builder(
            builder: (context) {
              final tabController = DefaultTabController.of(context)!;
              return builder(context, tabController);
            },
          ),
        ),
      ),
    );
  }
}

@immutable
class _FixLastPageBuilder extends StatefulWidget {
  final TabController tabController;
  final WidgetBuilder onScrolling;
  final WidgetBuilder onFixLast;

  const _FixLastPageBuilder({
    Key? key,
    required this.tabController,
    required this.onScrolling,
    required this.onFixLast,
  }) : super(key: key);

  @override
  State<_FixLastPageBuilder> createState() => _FixLastPageBuilderState();
}

class _FixLastPageBuilderState extends State<_FixLastPageBuilder> {
  bool fixLastPage = false;

  TabController get tabController => widget.tabController;

  @override
  void initState() {
    super.initState();
    tabController.animation!.addListener(animationListener);
  }

  @override
  void dispose() {
    tabController.animation!.removeListener(animationListener);
    super.dispose();
  }

  void animationListener() {
    final value = tabController.animation!.value;
    if (value >= tabController.length - 1) {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        setState(() {
          fixLastPage = true;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (fixLastPage) {
      return widget.onFixLast(context);
    } else {
      return widget.onScrolling(context);
    }
  }
}
