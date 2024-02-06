import 'dart:async';

import 'package:bbmstu_app/src/features/bmstu_id/data/bmstu_id_repository.dart';
import 'package:bbmstu_app/src/features/bmstu_id/domain/model/models.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bmstu_id_bloc.freezed.dart';

@freezed
abstract class BmstuIdEvent with _$BmstuIdEvent {
  const BmstuIdEvent._();

  const factory BmstuIdEvent.completeFirstOpen() = BmstuIdEventCompleteFirstOpen;

  const factory BmstuIdEvent.updateData() = BmstuIdEventUpdateData;
}

@freezed
abstract class BmstuIdState with _$BmstuIdState {
  const BmstuIdState._();

  const factory BmstuIdState.loading({
    required bool firstOpen,
    required BmstuId bmstuId,
  }) = _BmstuIdStateLoading;

  const factory BmstuIdState.idle({
    required bool firstOpen,
    required BmstuId bmstuId,
  }) = _BmstuIdStateIdle;

  const factory BmstuIdState.error({
    required bool firstOpen,
    required BmstuId bmstuId,
  }) = _BmstuIdStateError;

  BmstuIdState toLoading({
    bool? firstOpen,
    BmstuId? bmstuId,
  }) {
    return BmstuIdState.loading(
      firstOpen: firstOpen ?? this.firstOpen,
      bmstuId: bmstuId ?? this.bmstuId,
    );
  }

  BmstuIdState toIdle({
    bool? firstOpen,
    BmstuId? bmstuId,
  }) {
    return BmstuIdState.idle(
      firstOpen: firstOpen ?? this.firstOpen,
      bmstuId: bmstuId ?? this.bmstuId,
    );
  }

  BmstuIdState toError({
    bool? firstOpen,
    BmstuId? bmstuId,
  }) {
    return BmstuIdState.error(
      firstOpen: firstOpen ?? this.firstOpen,
      bmstuId: bmstuId ?? this.bmstuId,
    );
  }
}

extension on IBmstuIdRepository {
  BmstuIdState getState() {
    try {
      return BmstuIdState.idle(
        firstOpen: firstOpen,
        bmstuId: bmstuId,
      );
    } catch (_) {
      return BmstuIdState.error(
        firstOpen: firstOpen,
        bmstuId: const BmstuId.empty(),
      );
    }
  }
}

class BmstuIdBloc extends Bloc<BmstuIdEvent, BmstuIdState> {
  final IBmstuIdRepository _repository;
  late final Timer _timer;

  BmstuIdBloc({
    required IBmstuIdRepository repository,
  })  : _repository = repository,
        super(repository.getState()) {
    add(const BmstuIdEvent.updateData());

    _timer = Timer.periodic(
      const Duration(seconds: 15),
      (_) => add(const BmstuIdEvent.updateData()),
    );
  }

  @override
  Future<void> close() {
    _timer.cancel();
    return super.close();
  }

  @override
  Stream<BmstuIdState> mapEventToState(BmstuIdEvent event) => event.map<Stream<BmstuIdState>>(
        completeFirstOpen: _completeFirstOpen,
        updateData: _updateData,
      );

  Stream<BmstuIdState> _completeFirstOpen(BmstuIdEventCompleteFirstOpen event) async* {
    yield state.toLoading();

    try {
      await _repository.completeFirstOpen();
      final firstOpen = _repository.firstOpen;
      yield state.toIdle(firstOpen: firstOpen);
    } catch (_) {
      yield state.toError();
      yield state.toIdle();
      rethrow;
    }
  }

  Stream<BmstuIdState> _updateData(BmstuIdEventUpdateData event) async* {
    yield state.toLoading();

    try {
      final bmstuId = await _repository.updateBmstuId();
      yield state.toIdle(bmstuId: bmstuId);
    } catch (_) {
      yield state.toError();
      yield state.toIdle();
      rethrow;
    }
  }
}
