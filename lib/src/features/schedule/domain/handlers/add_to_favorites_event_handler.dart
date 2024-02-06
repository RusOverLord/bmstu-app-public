import 'dart:async';

import 'package:bbmstu_app/src/features/schedule/data/favorites_repository.dart';
import 'package:bbmstu_app/src/features/schedule/domain/bloc/favorites_bloc.dart';
import 'package:bbmstu_app/src/features/schedule/domain/event_handler.dart';
import 'package:bbmstu_app/src/features/schedule/domain/schedule_event_bus.dart';
import 'package:stream_transform/stream_transform.dart';

typedef _Event = AddFavoriteEvent;

class AddToFavoritesEventHandler extends EventHandler<_Event> {
  final FavoritesRepository _repository;

  AddToFavoritesEventHandler({
    required ScheduleEventBus scheduleEventBus,
    required FavoritesRepository repository,
  })  : _repository = repository,
        super(scheduleEventBus.stream.whereType<_Event>());

  @override
  Future<void> handle(_Event event) async {
    await _repository.addToFavorites(event.schedule.whom);
  }
}
