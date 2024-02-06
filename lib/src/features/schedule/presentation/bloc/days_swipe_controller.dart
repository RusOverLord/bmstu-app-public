import 'dart:async';

import 'package:bbmstu_app/src/core/utility/page_jump_controller.dart';
import 'package:rxdart/rxdart.dart';

import 'week_page_view_controller.dart';

abstract class PageViewJumpNotifier {
  Stream<bool> get jumpEvent;
}

class DaysSwipeController implements PageViewJumpNotifier {
  late final StreamSubscription<int> _subscription;
  final PageViewJumpController _jumpController;
  final _jumpEventController = PublishSubject<bool>();
  int _tapsNumber = 0;

  DaysSwipeController({
    required PageViewJumpController jumpController,
    required DayTapNotifier dayTapNotifier,
  }) : _jumpController = jumpController {
    _subscription = dayTapNotifier.tapEvent.listen(_dayTapEventHandler);
  }

  void dispose() {
    _jumpEventController.close();
    _subscription.cancel();
  }

  @override
  Stream<bool> get jumpEvent => _jumpEventController;

  void _dayTapEventHandler(int index) {
    _tapsNumber++;
    _jumpEventController.add(true);
    _jumpController.animateToPage(index).then((_) {
      _tapsNumber--;

      if(_tapsNumber == 0) {
        _jumpEventController.add(false);
      }
    });
  }
}
