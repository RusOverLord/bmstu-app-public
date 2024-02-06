import 'dart:async';

extension StreamControllerExtension<T> on StreamController {
  void addIfAlive(T event) {
    if (!isClosed) {
      add(event);
    }
  }
}
