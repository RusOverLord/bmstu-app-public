import 'package:hooks_riverpod/hooks_riverpod.dart';

final bottomBarBroadcasterProvider =
    Provider.autoDispose<IBottomBarBroadcaster>((ref) {
  return BottomBarBroadcaster();
});

abstract class IBottomBarBroadcaster {
  void addListener<T>(Function listener);

  void removeListener<T>(Function listener);

  void callEvent<T>();
}

class BottomBarBroadcaster implements IBottomBarBroadcaster {
  Map<Type, List<Function>> listeners = {};

  @override
  void addListener<T>(Function listener) {
    if (listeners[T] == null) {
      listeners[T] = [];
    }

    listeners[T]!.add(listener);
  }

  @override
  void removeListener<T>(Function listener) {
    listeners[T]!.remove(listener);
  }

  @override
  void callEvent<T>() {
    if (listeners[T] == null) {
      listeners[T] = [];
    }

    for (var listener in listeners[T]!) {
      listener();
    }
  }
}
