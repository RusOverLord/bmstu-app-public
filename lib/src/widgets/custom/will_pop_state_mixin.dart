import 'package:flutter/material.dart';

mixin WillPopStateMixin<T extends StatefulWidget> on State<T> {
  ModalRoute? _route;

  Future<bool> onWillPop() {
    return Future.value(true);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _route?.removeScopedWillPopCallback(onWillPop);
    _route = ModalRoute.of(context);
    _route?.addScopedWillPopCallback(onWillPop);
  }

  @override
  void dispose() {
    _route?.removeScopedWillPopCallback(onWillPop);
    super.dispose();
  }
}
