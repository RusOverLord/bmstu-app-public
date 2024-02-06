import 'dart:async';

import 'package:bbmstu_app/src/features/schedule/data/favorites_repository.dart';
import 'package:bbmstu_app/src/features/schedule/data/schedule_repository.dart';
import 'package:bbmstu_app/src/features/schedule/domain/event_handler.dart';
import 'package:bbmstu_app/src/features/schedule/domain/events.dart';
import 'package:bbmstu_app/src/features/schedule/domain/schedule_event_bus.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_schedule_handler.freezed.dart';

typedef _Event = DeleteScheduleEvent;

@freezed
abstract class DeleteScheduleEvent with _$DeleteScheduleEvent implements Event {
  const factory DeleteScheduleEvent({
      required String uuid,
  }) = _DeleteScheduleEvent;
}

class DeleteScheduleEventHandler extends EventHandler<_Event> {
  final FavoritesRepository _favoritesRepository;
  final ScheduleRepository _scheduleRepository;

  DeleteScheduleEventHandler({
    required ScheduleEventBus scheduleEventBus,
    required FavoritesRepository favoritesRepository,
    required ScheduleRepository scheduleRepository,
  })  : _favoritesRepository = favoritesRepository,
        _scheduleRepository = scheduleRepository,
        super(scheduleEventBus.stream.whereType<_Event>());

  @override
  Future<void> handle(_Event event) async {
    final isFavorite = await _favoritesRepository.isFavorite(event.uuid);

    if (!isFavorite) {
      await _scheduleRepository.delete(event.uuid);
    }
  }
}
