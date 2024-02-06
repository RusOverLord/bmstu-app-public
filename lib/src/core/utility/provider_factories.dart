import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

StreamController<T> streamControllerAutoDispose<T>(
    AutoDisposeProviderReference ref) {
  final controller = StreamController<T>();
  ref.onDispose(controller.close);
  return controller;
}
