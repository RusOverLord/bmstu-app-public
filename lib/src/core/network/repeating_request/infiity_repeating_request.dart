import 'dart:async';

import 'package:bbmstu_app/src/core/network/repeating_request/repeating_request.dart';

class InfinityRepeatingRequest<T> extends RepeatingRequestBase<T> {
  final RequestFunction<T> request;
  final Duration delay;
  bool canceled = false;

  InfinityRepeatingRequest({
    required this.request,
    Duration? delay,
  }) : delay = delay ?? const Duration(seconds: 1);

  @override
  Future<void> executeAsync({
    required DataCallbackAsync<T> onData,
    required FailureCallbackAsync onFailure,
  }) async {
    while (!canceled) {
      final dataOrFailure = await request();

      await dataOrFailure.fold(
        (failure) => onFailure(failure),
        (data) => onData(data),
      );

      if (dataOrFailure.isRight()) {
        cancel();
        return;
      }

      await Future<void>.delayed(delay);
    }
  }

  @override
  void cancel() {
    canceled = true;
  }
}
