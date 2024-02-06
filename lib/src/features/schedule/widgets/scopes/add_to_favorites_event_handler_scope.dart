import 'package:bbmstu_app/src/features/schedule/domain/handlers/add_to_favorites_event_handler.dart';
import 'package:flutter/material.dart';

import 'schedule_data_di_factory.dart';

typedef _Handler = AddToFavoritesEventHandler;

class AddToFavoritesEventHandlerScope extends StatefulWidget {
  final Widget child;

  const AddToFavoritesEventHandlerScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<AddToFavoritesEventHandlerScope> createState() => _FavoritesScopeScopeState();
}

class _FavoritesScopeScopeState extends State<AddToFavoritesEventHandlerScope> {
  late _Handler _handler;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _handler = ScheduleDataDIFactory(context).addToFavoritesEventHandler;
  }

  @override
  void dispose() {
    _handler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
