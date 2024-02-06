import 'dart:async';

import 'package:bbmstu_app/src/core/error/failures.dart';
import 'package:bbmstu_app/src/core/network/repeating_request/infiity_repeating_request.dart';
import 'package:bbmstu_app/src/core/network/repeating_request/limited_repeating_request.dart';
import 'package:dartz/dartz.dart';

typedef RequestFunction<T> = Future<Either<Failure, T>> Function();

typedef DataCallback<T> = void Function(T data);
typedef FailureCallback = void Function(Failure failure);

typedef DataCallbackAsync<T> = Future<void> Function(T data);
typedef FailureCallbackAsync = Future<void> Function(Failure failure);

abstract class RepeatingRequest<T> {
  factory RepeatingRequest.infinity({
    required RequestFunction<T> request,
    Duration? delay,
  }) = InfinityRepeatingRequest;

  factory RepeatingRequest.limited({
    required RequestFunction<T> request,
    required int maxAttempts,
    Duration? delay,
  }) {
    return LimitedRepeatingRequest(
      maxAttempts: maxAttempts,
      infinityRepeatingRequest: InfinityRepeatingRequest(
        request: request,
        delay: delay,
      ),
    );
  }

  Future<void> execute({
    required DataCallback<T> onData,
    required FailureCallback onFailure,
  });

  Future<void> executeAsync({
    required DataCallbackAsync<T> onData,
    required FailureCallbackAsync onFailure,
  });

  void cancel();
}

abstract class RepeatingRequestBase<T> implements RepeatingRequest<T> {
  @override
  Future<void> execute({
    required DataCallback<T> onData,
    required FailureCallback onFailure,
  }) async {
    return executeAsync(
      onData: (data) async => onData(data),
      onFailure: (failure) async => onFailure(failure),
    );
  }
}
