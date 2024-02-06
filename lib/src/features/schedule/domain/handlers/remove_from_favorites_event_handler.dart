import 'dart:async';

import 'package:bbmstu_app/src/core/utility/value_stream.dart';
import 'package:bbmstu_app/src/features/schedule/data/favorites_repository.dart';
import 'package:bbmstu_app/src/features/schedule/data/schedule_repository.dart';
import 'package:bbmstu_app/src/features/schedule/domain/bloc/favorites_bloc.dart';
import 'package:bbmstu_app/src/features/schedule/domain/event_handler.dart';
import 'package:bbmstu_app/src/features/schedule/domain/schedule_event_bus.dart';
import 'package:stream_transform/stream_transform.dart';

typedef _Event = RemoveFavoriteEvent;

class RemoveFromFavoritesEventHandler extends EventHandler<_Event> {
  final FavoritesRepository _favoritesRepository;
  final ScheduleRepository _scheduleRepository;
  final ValueStream<String?> _mainScheduleUuid;

  RemoveFromFavoritesEventHandler({
    required ScheduleEventBus scheduleEventBus,
    required FavoritesRepository favoritesRepository,
    required ScheduleRepository scheduleRepository,
    required ValueStream<String?> mainScheduleUuid,
  })  : _favoritesRepository = favoritesRepository,
        _scheduleRepository = scheduleRepository,
        _mainScheduleUuid = mainScheduleUuid,
        super(scheduleEventBus.stream.whereType<_Event>());

  @override
  Future<void> handle(_Event event) async {
    await _favoritesRepository.removeFromFavorites(event.uuid);

    if (!_isMain(event.uuid)) {
      await _scheduleRepository.delete(event.uuid);
    }
  }

  bool _isMain(String uuid) => _mainScheduleUuid.value == uuid;
}
