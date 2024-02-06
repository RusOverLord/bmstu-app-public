import 'dart:async';

import 'package:bbmstu_app/src/core/utility/notifier_subscription.dart';
import 'package:bbmstu_app/src/core/utility/page_jump_controller.dart';
import 'package:flutter/material.dart';

abstract class DayTapNotifier {
  Stream<int> get tapEvent;
}

class WeePageViewController implements DayTapNotifier {
  late final NotifierSubscription _dayPageControllerSubscription;
  final PageViewJumpController _jumpController;
  final _tapController = StreamController<int>.broadcast();
  int _selectedWeek;

  WeePageViewController({
    required PageViewJumpController jumpController,
    required PageController dayPageController,
  })  : _jumpController = jumpController,
        _selectedWeek = jumpController.initialPage {
    _dayPageControllerSubscription = dayPageController.listen(dayPageControllerEventHandler);
  }

  void dispose() {
    _tapController.close();
    _dayPageControllerSubscription.cancel();
  }

  @override
  Stream<int> get tapEvent => _tapController.stream;

  void onUserSwipe(PointerMoveEvent details) {
    void onAnimationComplete(void _) {
      _selectedWeek = _jumpController.pageController.page!.floor();
    }

    const sensitivity = 10;

    if (details.delta.dx > sensitivity) {
      _jumpController.previousPage().then(onAnimationComplete);
    } else if (details.delta.dx < -sensitivity) {
      _jumpController.nextPage().then(onAnimationComplete);
    }
  }

  void onTap(int index) {
    _tapController.add(index);
  }

  void dayPageControllerEventHandler(PageController pageController) {
    final lessonsPage = pageController.page!;
    final moveTo = ((lessonsPage + 0.5) / 6).floor();

    if (_selectedWeek != moveTo) {
      _selectedWeek = moveTo;
      _jumpController.animateToPage(moveTo);
    }
  }
}
