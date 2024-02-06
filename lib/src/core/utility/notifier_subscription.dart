import 'package:flutter/widgets.dart';

typedef Handler<T> = void Function(T notifier);

class NotifierSubscription<T extends ChangeNotifier> {
  final T _notifier;
  final void Function() _function;

  NotifierSubscription._(this._notifier, this._function) {
    _notifier.addListener(_function);
  }

  factory NotifierSubscription(T notifier, Handler<T> handler) {
    return NotifierSubscription._(notifier, () => handler(notifier));
  }

  void cancel() => _notifier.removeListener(_function);
}

extension ListenChangeNotifier<T extends ChangeNotifier> on T {
  NotifierSubscription<T> listen(Handler<T> handler) => NotifierSubscription(this, handler);
}
