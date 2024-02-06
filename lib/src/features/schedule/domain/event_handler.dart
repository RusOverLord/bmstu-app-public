import 'dart:async';

import 'package:bbmstu_app/src/core/crashlytics.dart';
import 'package:bbmstu_app/src/core/logger.dart';

abstract class EventHandler<Event> {
  late final StreamSubscription<Event> _subscription;

  EventHandler(Stream<Event> stream) {
    _subscription = stream.listen(_tryHandle);
  }

  void dispose() => _subscription.cancel();

  Future<void> _tryHandle(Event event) async {
    l.i('$runtimeType: $event');

    try {
      await handle(event);
    } catch (e, st) {
      l.e('$runtimeType: $event', stackTrace: st);
      ICrashlytics.instance.recordError(e, st);
    }
  }

  Future<void> handle(Event event);
}
