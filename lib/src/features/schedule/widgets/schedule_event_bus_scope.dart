import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:bbmstu_app/src/features/schedule/domain/bloc/favorites_bloc.dart';
import 'package:bbmstu_app/src/features/schedule/domain/bloc/schedule_bloc.dart';
import 'package:bbmstu_app/src/features/schedule/domain/handlers/delete_schedule_handler.dart';
import 'package:bbmstu_app/src/features/schedule/domain/schedule_event_bus.dart';
import 'package:bbmstu_app/src/features/schedule/models/models.dart';
import 'package:flutter/material.dart';

typedef _Bus = ScheduleEventBus;

typedef _BusScope = ValueScope<_Bus>;

class ScheduleEventBusScope extends StatefulWidget {
  final Widget child;

  const ScheduleEventBusScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  /// не изменяется, так что read достаточно
  static _Bus watch(BuildContext context) => read(context);

  static _Bus read(BuildContext context) => ValueScope.read<_Bus>(context);

  static void deleteSchedule(
    BuildContext context, {
    required String uuid,
  }) =>
      ValueScope.read<_Bus>(context).add(DeleteScheduleEvent(uuid: uuid));

  static void addToFavorite(
    BuildContext context, {
    required Schedule schedule,
  }) {
    final add = read(context).add;
    add(FavoritesEvent.addFavorite(schedule: schedule));
    add(ScheduleEvent.save(schedule: schedule));
  }

  static void removeFavorite(
    BuildContext context, {
    required String uuid,
  }) =>
      read(context).add(FavoritesEvent.removeFavorite(uuid: uuid));

  static void switchFavorite(
    BuildContext context, {
    required Schedule schedule,
    required bool isFavorite,
  }) =>
      read(context).add(FavoritesEvent.switchFavorite(schedule: schedule, isFavorite: isFavorite));

  @override
  State<ScheduleEventBusScope> createState() => _FavoritesScopeScopeState();
}

class _FavoritesScopeScopeState extends State<ScheduleEventBusScope> {
  late final _bus = _Bus();

  @override
  void dispose() {
    _bus.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _BusScope(
      value: _bus,
      child: widget.child,
    );
  }
}
