import 'package:bbmstu_app/src/features/schedule/domain/handlers/remove_from_favorites_event_handler.dart';
import 'package:flutter/material.dart';

import 'schedule_di_factory.dart';

typedef _Handler = RemoveFromFavoritesEventHandler;

class RemoveFromFavoritesEventHandlerScope extends StatefulWidget {
  final Widget child;

  const RemoveFromFavoritesEventHandlerScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<RemoveFromFavoritesEventHandlerScope> createState() => _RemoveFromFavoritesEventHandlerScopeState();
}

class _RemoveFromFavoritesEventHandlerScopeState extends State<RemoveFromFavoritesEventHandlerScope> {
  late _Handler _handler;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _handler = ScheduleDIFactory(context).removeFromFavoritesEventHandler;
  }

  @override
  void dispose() {
    _handler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
