import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

class ValueStream<T> extends Stream<T> {
  final Stream<T> _stream;
  T _value;

  ValueStream(
    this._stream, {
    required T initialValue,
  }) : _value = initialValue;

  T get value => _value;

  @override
  StreamSubscription<T> listen(
    void Function(T event)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) =>
      _stream.listen(
        (event) {
          _value = event;
          onData?.call(event);
        },
        onError: onError,
        onDone: onDone,
        cancelOnError: cancelOnError,
      );

  @override
  ValueStream<S> map<S>(S Function(T event) convert) => super.map(convert).valueStream(
        initialValue: convert(_value),
      );
}

extension ValueStreamExtensionStream<T> on Stream<T> {
  ValueStream<T> valueStream({
    required T initialValue,
  }) =>
      ValueStream(this, initialValue: initialValue);
}

extension ValueStreamExtensionBlocBaase<T> on BlocBase<T> {
  ValueStream<T> valueStream() => ValueStream(stream, initialValue: state);
}
