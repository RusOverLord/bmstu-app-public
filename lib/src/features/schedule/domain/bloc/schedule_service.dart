import 'dart:async';

import 'package:bbmstu_app/src/core/utility/value_stream.dart';
import 'package:bbmstu_app/src/features/schedule/data/schedule_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_service.freezed.dart';

@freezed
abstract class ScheduleServiceEvent with _$ScheduleServiceEvent {
  const ScheduleServiceEvent._();

  const factory ScheduleServiceEvent.updateMainScheduleUuid({
    required String? mainScheduleUuid,
  }) = ScheduleServiceEventUpdateMainScheduleUuid;
}

@freezed
abstract class ScheduleServiceState with _$ScheduleServiceState {
  const ScheduleServiceState._();

  const factory ScheduleServiceState({
    required String? mainScheduleUuid,
  }) = _ScheduleServiceState;
}

class ScheduleService extends Bloc<ScheduleServiceEvent, ScheduleServiceState> {
  final ScheduleRepository _repository;
  late StreamSubscription<String?> _subscription;

  ScheduleService({
    required ValueStream<String?> mainScheduleUuid,
    required ScheduleRepository repository,
  })  : _repository = repository,
        super(
          ScheduleServiceState(
            mainScheduleUuid: mainScheduleUuid.value,
          ),
        ) {
    _subscription = mainScheduleUuid.listen(
      (event) => add(
        ScheduleServiceEvent.updateMainScheduleUuid(
          mainScheduleUuid: event,
        ),
      ),
    );
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }

  @override
  Stream<ScheduleServiceState> mapEventToState(ScheduleServiceEvent event) => event.map<Stream<ScheduleServiceState>>(
        updateMainScheduleUuid: _updateMainScheduleUuid,
      );

  Stream<ScheduleServiceState> _updateMainScheduleUuid(ScheduleServiceEventUpdateMainScheduleUuid event) async* {
    if (state.mainScheduleUuid == event.mainScheduleUuid) return;

    try {
      final oldUuid = state.mainScheduleUuid;

      if (oldUuid != null) {
        final shouldDelete = await _repository.isExistsAndNotFavorite(oldUuid);
        if (shouldDelete) await _repository.delete(oldUuid);
      }

      yield state.copyWith(
        mainScheduleUuid: event.mainScheduleUuid,
      );
    } catch (_) {
      rethrow;
    }
  }
}
