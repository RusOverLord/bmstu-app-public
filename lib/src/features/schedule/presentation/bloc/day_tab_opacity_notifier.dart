import 'package:bbmstu_app/src/core/utility/notifier_subscription.dart';
import 'package:bbmstu_app/src/features/schedule/presentation/bloc/days_swipe_controller.dart';
import 'package:bbmstu_app/src/features/schedule/presentation/bloc/week_page_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class DayTabsOpacityNotifier extends ValueNotifier<DayTabsOpacityState> {
  final _subscription = CompositeSubscription();
  late final NotifierSubscription _dayControllerSubscription;
  bool animationStopped = false;

  DayTabsOpacityNotifier({
    required PageViewJumpNotifier dayJumpNotifier,
    required DayTapNotifier dayTapNotifier,
    required PageController dayController,
  }) : super(
      DayTabsOpacityState.onlyFirst(
        firstIndex: dayController.initialPage,
        firstOpacity: 1.0,
      ),
  ) {
    _subscription
      ..add(dayJumpNotifier.jumpEvent.listen(_jumpEventHandler))
      ..add(dayTapNotifier.tapEvent.listen(_dayTapEventHandler));

    _dayControllerSubscription = dayController.listen(_dayControllerEventHandler);
  }

  @override
  void dispose() {
    _subscription.cancel();
    _dayControllerSubscription.cancel();
    super.dispose();
  }

  void _dayTapEventHandler(int index) => _setState(index.toDouble());

  void _jumpEventHandler(bool isAnimating) => animationStopped = isAnimating;

  void _dayControllerEventHandler(PageController pageController) {
    if (animationStopped) {
      return;
    }

    _setState(pageController.page!);
  }

  void _setState(double index) {
    final firstIndex = index.floor();
    final firstOpacity = 1 - index + firstIndex;

    value = DayTabsOpacityState(
      firstIndex: firstIndex,
      firstOpacity: firstOpacity,
      secondIndex: firstIndex + 1,
      secondOpacity: 1 - firstOpacity,
    );
  }
}

class DayTabsOpacityState {
  final int firstIndex;
  final double firstOpacity;
  final int secondIndex;
  final double secondOpacity;

  const DayTabsOpacityState.onlyFirst({
    required int firstIndex,
    required double firstOpacity,
  }) : this(
          firstIndex: firstIndex,
          firstOpacity: firstOpacity,
          secondIndex: -1,
          secondOpacity: 0,
        );

  const DayTabsOpacityState({
    required this.firstIndex,
    required this.firstOpacity,
    required this.secondIndex,
    required this.secondOpacity,
  });

  double getOpacity(int index) {
    if (index == firstIndex) {
      return firstOpacity;
    }

    if (index == secondIndex) {
      return secondOpacity;
    }

    return 0;
  }
}
