import 'dart:async';
import 'package:bbmstu_app/src/core/logger.dart';
import 'package:bbmstu_app/src/features/schedule/data/schedule_repository.dart';
import 'package:bbmstu_app/src/features/schedule/domain/events.dart';
import 'package:bbmstu_app/src/features/schedule/domain/schedule_event_bus.dart';
import 'package:bbmstu_app/src/features/schedule/models/models.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:remote_api/remote_api.dart';
import 'package:rxdart/rxdart.dart' hide ValueStream;

part 'schedule_bloc.freezed.dart';

@freezed
abstract class ScheduleEvent with _$ScheduleEvent implements Event {
  const ScheduleEvent._();

  @With(_DataEmitter)
  @With(_ErrorEmitter)
  const factory ScheduleEvent.fetchLocal() = ScheduleEventFetchLocal;

  @With(_DataEmitter)
  @With(_CantFindEmitter)
  @With(_ErrorEmitter)
  @With(_SaveCaller)
  const factory ScheduleEvent.fetchRemote() = ScheduleEventFetchRemote;

  @With(_DataEmitter)
  @With(_CantFindEmitter)
  @With(_ErrorEmitter)
  const factory ScheduleEvent.save({
    required Schedule schedule,
  }) = ScheduleEventSave;

  /// вызов [ScheduleEvent.fetchRemote], если в состоянии нет расписания,
  /// то через 2 секунды повторяем, максимум 3 пытки,
  /// если получил расписание или число попыток исчерпано, то вызывает [ScheduleEvent.initialRemoteFetch]
  @With(_InitialRemoteFetchCaller)
  @With(_PeriodicRemoteFetchCaller)
  const factory ScheduleEvent.initialRemoteFetch({
    @Default(0) int attempt,
  }) = ScheduleEventInitialRemoteFetch;

  /// вызывает [ScheduleEvent.fetchRemote] раз в 5 минут,
  /// (каждый раз снова добавляет [ScheduleEvent.periodicRemoteFetch] в очередь событий блока)
  @With(_PeriodicRemoteFetchCaller)
  const factory ScheduleEvent.periodicRemoteFetch() = ScheduleEventPeriodicRemoteFetch;

  bool get isFetchLocal => maybeMap(fetchLocal: (_) => true, orElse: () => false);

  bool get isFetchRemote => maybeMap(fetchRemote: (_) => true, orElse: () => false);

  bool get isInitialRemoteFetch => maybeMap(initialRemoteFetch: (_) => true, orElse: () => false);

  bool get isPeriodicRemoteFetch => maybeMap(periodicRemoteFetch: (_) => true, orElse: () => false);

  bool get isSave => maybeMap(save: (_) => true, orElse: () => false);
}

@freezed
abstract class ScheduleState with _$ScheduleState {
  const ScheduleState._();

  const factory ScheduleState.loading() = ScheduleStateLoading;

  const factory ScheduleState.cantFind() = ScheduleStateCantFind;

  const factory ScheduleState.data({
    required Schedule schedule,
  }) = ScheduleStateData;

  const factory ScheduleState.error({
    Schedule? schedule,
  }) = ScheduleStateError;

  Schedule? get schedule => map(
        loading: (_) => null,
        cantFind: (_) => null,
        data: (data) => data.schedule,
        error: (error) => error.schedule,
      );

  bool get isLoading => maybeMap(loading: (_) => true, orElse: () => false);

  bool get isCantFind => maybeMap(cantFind: (_) => true, orElse: () => false);

  bool get isData => maybeMap(data: (_) => true, orElse: () => false);

  bool get isError => maybeMap(error: (_) => true, orElse: () => false);

  bool get hasSchedule => schedule != null;

  bool get hasNotSchedule => schedule == null;
}

extension on ScheduleRepository {
  ScheduleState getSate(String uuid) {
    final schedule = getSync(uuid);

    if (schedule != null) {
      return ScheduleState.data(schedule: schedule);
    }

    return const ScheduleState.loading();
  }
}

class ScheduleBloc extends Bloc<ScheduleEvent, ScheduleState> {
  late final StreamSubscription<ScheduleEvent> _subscription;
  final String _uuid;
  final ScheduleRepository _scheduleRepository;

  ScheduleBloc({
    required ScheduleEventBus scheduleEventBus,
    required String uuid,
    required ScheduleRepository repository,
  })  : _uuid = uuid,
        _scheduleRepository = repository,
        super(repository.getSate(uuid)) {
    if (state.hasNotSchedule) {
      add(const ScheduleEvent.fetchLocal());
    }

    add(const ScheduleEvent.initialRemoteFetch());
    _subscription = scheduleEventBus.stream.whereType<ScheduleEvent>().listen(add);
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }

  @override
  Stream<ScheduleState> mapEventToState(ScheduleEvent event) => event.map<Stream<ScheduleState>>(
        fetchLocal: _fetchLocal,
        fetchRemote: _fetchRemote,
        save: _save,
        initialRemoteFetch: _initialRemoteFetch,
        periodicRemoteFetch: _periodicRemoteFetch,
      );

  Stream<ScheduleState> _fetchLocal(ScheduleEventFetchLocal event) async* {
    try {
      final schedule = await _scheduleRepository.fetchLocal(_uuid);
      yield event.data(schedule: schedule);
    } catch (e, st) {
      l.e('$e', stackTrace: st);
    }
  }

  Stream<ScheduleState> _fetchRemote(ScheduleEventFetchRemote event) async* {
    try {
      final schedule = await _scheduleRepository.fetchRemote(_uuid);
      yield event.data(schedule: schedule);
      event.save(this, schedule);
    } on ServerException404 {
      yield event.cantFind();
      rethrow;
    } catch (_) {
      yield event.error(state: state);
      yield event.restore(state: state);
      rethrow;
    }
  }

  Stream<ScheduleState> _save(ScheduleEventSave event) async* {
    try {
      await _scheduleRepository.save(event.schedule);
    } catch (_) {
      yield event.error(state: state);
      yield event.restore(state: state);
      rethrow;
    }
  }

  Stream<ScheduleState> _initialRemoteFetch(ScheduleEventInitialRemoteFetch event) async* {
    add(const ScheduleEvent.fetchRemote());
    Future.delayed(
      const Duration(seconds: 2),
      () {
        if (event.attempt >= 3 || state.hasSchedule) {
          event.fetchRemotePeriodic(this);
        } else {
          event.retry(this);
        }
      },
    );
  }

  Stream<ScheduleState> _periodicRemoteFetch(ScheduleEventPeriodicRemoteFetch event) async* {
    add(const ScheduleEvent.fetchRemote());
    Future.delayed(
      const Duration(minutes: 5),
      () => add(const ScheduleEvent.periodicRemoteFetch()),
    );
  }
}

extension on ScheduleEventInitialRemoteFetch {
  void retry(ScheduleBloc bloc) => fetchRemoteInitial(bloc, attempt + 1);
}

mixin _DataEmitter on ScheduleEvent {
  ScheduleState data({
    required Schedule schedule,
  }) =>
      ScheduleState.data(schedule: schedule);
}

mixin _CantFindEmitter on ScheduleEvent {
  ScheduleState cantFind() => const ScheduleState.cantFind();
}

mixin _ErrorEmitter on ScheduleEvent {
  ScheduleState error({
    required ScheduleState state,
  }) =>
      ScheduleState.error(schedule: state.schedule);

  ScheduleState restore({
    required ScheduleState state,
  }) {
    final schedule = state.schedule;

    if (schedule == null) {
      return const ScheduleState.loading();
    }

    return ScheduleState.data(schedule: schedule);
  }
}

mixin _SaveCaller on ScheduleEvent {
  void save(ScheduleBloc bloc, Schedule schedule) => bloc.add(ScheduleEvent.save(schedule: schedule));
}

mixin _InitialRemoteFetchCaller on ScheduleEvent {
  void fetchRemoteInitial(ScheduleBloc bloc, int attempt) => bloc.add(ScheduleEvent.initialRemoteFetch(attempt: attempt));
}

mixin _PeriodicRemoteFetchCaller on ScheduleEvent {
  void fetchRemotePeriodic(ScheduleBloc bloc) => bloc.add(const ScheduleEvent.periodicRemoteFetch());
}

class NullScheduleException {
  final String? message;
  final Object? error;

  NullScheduleException({
    this.message,
    this.error,
  });

  @override
  String toString() {
    var string = '$runtimeType: ';
    final hasStatusCode = message != null;
    final hasError = error != null;

    if (hasStatusCode) {
      string += 'message: ${message!}';
    }

    if (hasError) {
      if (hasStatusCode) {
        string += ', ';
      }

      string += 'error: ${error!}';
    }

    return string;
  }
}
