import 'dart:async';

import 'package:bbmstu_app/src/features/schedule/data/favorites_repository.dart';
import 'package:bbmstu_app/src/features/schedule/domain/events.dart';
import 'package:bbmstu_app/src/features/schedule/domain/schedule_event_bus.dart';
import 'package:bbmstu_app/src/features/schedule/models/models.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'favorites_bloc.freezed.dart';

@freezed
class FavoritesEvent with _$FavoritesEvent implements Event {
  const FavoritesEvent._();

  const factory FavoritesEvent.fetch() = FetchFavoritesEvent;

  const factory FavoritesEvent.addFavorite({
    required Schedule schedule,
  }) = AddFavoriteEvent;

  const factory FavoritesEvent.removeFavorite({
    required String uuid,
  }) = RemoveFavoriteEvent;

  factory FavoritesEvent.switchFavorite({
    required Schedule schedule,
    required bool isFavorite,
  }) {
    if (isFavorite) {
      return FavoritesEvent.addFavorite(schedule: schedule);
    } else {
      return FavoritesEvent.removeFavorite(uuid: schedule.uuid);
    }
  }
}

@freezed
class FavoritesState with _$FavoritesState {
  const FavoritesState._();

  const factory FavoritesState.idle({
    Favorites? favorites,
  }) = FavoritesStateIdle;

  const factory FavoritesState.error({
    Favorites? favorites,
  }) = FavoritesStateError;

  FavoritesState toIdle({Favorites? favorites}) {
    return FavoritesState.idle(
      favorites: favorites ?? this.favorites,
    );
  }

  FavoritesState toError({Favorites? favorites}) {
    return FavoritesState.error(
      favorites: favorites ?? this.favorites,
    );
  }
}

extension on FavoritesRepository {
  FavoritesState getSate() => FavoritesState.idle(favorites: getSync());
}

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  late final StreamSubscription<FavoritesEvent> _subscription;
  final FavoritesRepository _repository;

  FavoritesBloc({
    required FavoritesRepository repository,
    required ScheduleEventBus scheduleEventBus,
  })  : _repository = repository,
        super(repository.getSate()) {
    add(const FavoritesEvent.fetch());
    _subscription = scheduleEventBus.stream.whereType<FavoritesEvent>().listen(add);
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }

  @override
  Stream<FavoritesState> mapEventToState(FavoritesEvent event) => event.map<Stream<FavoritesState>>(
        fetch: _fetch,
        removeFavorite: _removeFavorite,
        addFavorite: _addFavorite,
      );

  Stream<FavoritesState> _fetch(FetchFavoritesEvent event) => _tryWrap(
        body: () async {
          final favorites = await _repository.fetch();
          return FavoritesState.idle(favorites: favorites);
        },
      );

  Stream<FavoritesState> _addFavorite(AddFavoriteEvent event) => _tryWrap(
        body: () async {
          /// TODO:
          /// выполняется в [AddToFavoritesEventHandler]
          /// await _repository.add(event.schedule.whom);
          return FavoritesState.idle(
            favorites: state.favorites!.copy()..add(event.schedule.whom),
          );
        },
      );

  Stream<FavoritesState> _removeFavorite(RemoveFavoriteEvent event) => _tryWrap(
        body: () async {
          /// TODO:
          /// выполняется в [RemoveFromFavoritesEventHandler]
          // await _repository.remove(event.uuid);
          return FavoritesState.idle(
            favorites: state.favorites!.copy()..remove(event.uuid),
          );
        },
      );

  Stream<FavoritesState> _tryWrap({
    required Future<FavoritesState> Function() body,
  }) async* {
    try {
      yield await body();
    } catch (_) {
      yield state.toError();
      yield state.toIdle();
      rethrow;
    }
  }
}
