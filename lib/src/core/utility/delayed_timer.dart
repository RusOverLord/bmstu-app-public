import 'dart:async';

import 'package:flutter/material.dart';

/// timer, which starts after the delay
class DelayedTimer {
  final Duration delay;
  final Duration period;
  final VoidCallback callBack;
  Timer? _timer;
  bool canceled = false;

  DelayedTimer({
    required this.callBack,
    required this.period,
    required this.delay,
  });

  Future<void> start() async {
    _timer = await Future.delayed(
      delay,
      () {
        if (canceled) {
          return null;
        }

        callBack();
        return Timer.periodic(period, (_) => callBack());
      },
    );
  }

  void cancel() {
    if (canceled) {
      return;
    }

    _timer?.cancel();
    canceled = true;
  }

  DelayedTimer copyWith({
    VoidCallback? callBack,
    Duration? period,
    Duration? delay,
  }) {
    return DelayedTimer(
      callBack: callBack ?? this.callBack,
      period: period ?? this.period,
      delay: delay ?? this.delay,
    );
  }
}
