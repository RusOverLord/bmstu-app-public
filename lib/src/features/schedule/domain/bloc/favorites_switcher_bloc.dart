import 'dart:async';

import 'package:bbmstu_app/src/features/schedule/data/favorites_repository.dart';
import 'package:bbmstu_app/src/features/schedule/domain/bloc/favorites_bloc.dart';
import 'package:bbmstu_app/src/features/schedule/domain/schedule_event_bus.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_transform/stream_transform.dart';

part 'favorites_switcher_bloc.freezed.dart';

@freezed
class FavoritesSwitcherEvent with _$FavoritesSwitcherEvent {
  const FavoritesSwitcherEvent._();

  @With(_IdleEmitter)
  @With(_ErrorEmitter)
  const factory FavoritesSwitcherEvent.init() = FavoritesSwitcherEventInit;

  @With(_IdleEmitter)
  const factory FavoritesSwitcherEvent.switchFavorite({
    required bool isFavorite,
  }) = FavoritesSwitcherEventSwitchFavorite;
}

@freezed
class FavoritesSwitcherState with _$FavoritesSwitcherState {
  const FavoritesSwitcherState._();

  const factory FavoritesSwitcherState.idle({
    bool? isFavorite,
  }) = FavoritesSwitcherStateIdle;

  const factory FavoritesSwitcherState.error({
    bool? isFavorite,
  }) = FavoritesSwitcherStateError;
}

extension on FavoritesRepository {
  FavoritesSwitcherState getState(String uuid) {
    final isFavorite = isFavoriteSync(uuid);

    if (isFavorite == null) {
      return const FavoritesSwitcherState.idle();
    }

    return FavoritesSwitcherState.idle(isFavorite: isFavorite);
  }
}

class FavoritesSwitcherBloc extends Bloc<FavoritesSwitcherEvent, FavoritesSwitcherState> {
  final String uuid;
  final FavoritesRepository _repository;
  late final StreamSubscription<FavoritesEvent> _subscription;

  FavoritesSwitcherBloc({
    required this.uuid,
    required FavoritesRepository repository,
    required ScheduleEventBus scheduleEventBus,
  })  : _repository = repository,
        super(repository.getState(uuid)) {
    add(const FavoritesSwitcherEvent.init());
    _subscription = scheduleEventBus.stream.whereType<FavoritesEvent>().listen(
          (event) => event.mapOrNull(
            addFavorite: (_) => add(const FavoritesSwitcherEvent.switchFavorite(isFavorite: true)),
            removeFavorite: (_) => add(const FavoritesSwitcherEvent.switchFavorite(isFavorite: false)),
          ),
        );
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }

  @override
  Stream<FavoritesSwitcherState> mapEventToState(FavoritesSwitcherEvent event) =>
      event.map<Stream<FavoritesSwitcherState>>(
        init: _init,
        switchFavorite: _switchFavorite,
      );

  Stream<FavoritesSwitcherState> _init(FavoritesSwitcherEventInit event) async* {
    try {
      final isFavorite = await _repository.isFavorite(uuid);
      yield event.idle(isFavorite: isFavorite);
    } catch (_) {
      yield event.error(state: state);
      yield event.idle(isFavorite: state.isFavorite);
      rethrow;
    }
  }

  Stream<FavoritesSwitcherState> _switchFavorite(FavoritesSwitcherEventSwitchFavorite event) async* {
    yield event.idle(isFavorite: event.isFavorite);
  }
}

mixin _IdleEmitter on FavoritesSwitcherEvent {
  FavoritesSwitcherState idle({
    bool? isFavorite,
  }) =>
      FavoritesSwitcherState.idle(isFavorite: isFavorite);
}

mixin _ErrorEmitter on FavoritesSwitcherEvent {
  FavoritesSwitcherState error({
    required FavoritesSwitcherState state,
  }) =>
      FavoritesSwitcherState.error(isFavorite: state.isFavorite);
}

class NullIsFavoriteException {}
