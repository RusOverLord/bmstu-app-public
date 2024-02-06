import 'dart:async';

import 'package:bbmstu_app/src/core/network/repeating_request/infiity_repeating_request.dart';
import 'package:bbmstu_app/src/core/network/repeating_request/repeating_request.dart';

class LimitedRepeatingRequest<T> extends RepeatingRequestBase<T> {
  final InfinityRepeatingRequest<T> infinityRepeatingRequest;
  final int maxAttempts;
  Completer<void>? completer;
  bool canceled = false;

  LimitedRepeatingRequest({
    required this.infinityRepeatingRequest,
    required this.maxAttempts,
  });

  @override
  Future<void> executeAsync({
    required DataCallbackAsync<T> onData,
    required FailureCallbackAsync onFailure,
  }) async {
    completer = Completer<void>();
    var attempts = 0;

    infinityRepeatingRequest
        .executeAsync(
      onData: onData,
      onFailure: (failure) {
        attempts++;

        if (attempts == maxAttempts) {
          cancel();
        }

        return onFailure(failure);
      },
    )
        .then((_) {
      cancel();
    });

    return completer!.future;
  }

  @override
  void cancel() {
    final completer = this.completer;

    if (completer != null && !completer.isCompleted) {
      completer.complete();
    }

    infinityRepeatingRequest.cancel();
  }
}
