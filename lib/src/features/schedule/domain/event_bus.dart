import 'dart:async';

import 'package:bbmstu_app/src/core/logger.dart';

class EventBus<Event> {
  final _controller = StreamController<Event>.broadcast();

  void close() => _controller.close();

  Stream<Event> get stream => _controller.stream;

  void add(Event event) {
    l.i('$runtimeType: $event');
    _controller.sink.add(event);
  }
}
