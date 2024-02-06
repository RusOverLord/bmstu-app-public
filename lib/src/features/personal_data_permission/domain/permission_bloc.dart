import 'package:bbmstu_app/src/core/logger.dart';
import 'package:bbmstu_app/src/features/personal_data_permission/data/permission_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission_bloc.freezed.dart';

@freezed
abstract class PermissionEvent with _$PermissionEvent {
  const PermissionEvent._();

  @With(_NotConfirmedEmitter)
  const factory PermissionEvent.uncheck() = PermissionEventUncheck;

  @With(_NotConfirmedEmitter)
  const factory PermissionEvent.reverseCheck() = PermissionEventReverseCheck;

  @Implements(_ICheckedContainer)
  @With(_AlwaysChecked)
  @With(_NotConfirmedEmitter)
  @With(_ConfirmEmitter)
  @With(_ErrorEmitter)
  const factory PermissionEvent.confirm() = PermissionEventConfirm;
}

@freezed
abstract class PermissionState with _$PermissionState implements _ICheckedContainer {
  const PermissionState._();

  const factory PermissionState.notConfirmed({required bool checked}) = PermissionStateNotConfirmed;

  @With(_AlwaysChecked)
  const factory PermissionState.confirmed() = PermissionStateConfirmed;

  @With(_AlwaysChecked)
  const factory PermissionState.error() = PermissionStateError;

  bool get isConfirmed => maybeMap(
        confirmed: (_) => true,
        orElse: () => false,
      );
}

class PermissionBloc extends Bloc<PermissionEvent, PermissionState> {
  final IPermissionRepository _repository;

  PermissionBloc({
    required IPermissionRepository repository,
  })  : _repository = repository,
        super(
          repository.value ? const PermissionState.confirmed() : const PermissionState.notConfirmed(checked: false),
        );

  @override
  Stream<PermissionState> mapEventToState(PermissionEvent event) => event.map<Stream<PermissionState>>(
        uncheck: _uncheck,
        reverseCheck: _reverseCheck,
        confirm: _confirm,
      );

  Stream<PermissionState> _uncheck(PermissionEventUncheck event) async* {
    yield event.unChecked();
  }

  Stream<PermissionState> _reverseCheck(PermissionEventReverseCheck event) async* {
    yield event.reverseChecked(state: state);
  }

  Stream<PermissionState> _confirm(PermissionEventConfirm event) async* {
    try {
      await _repository.confirm();
      yield event.confirm();
    } on Object catch (e, st) {
      l.e('Ошибка при подтверждении согласия на обрадотку персональных данных: $e', stackTrace: st);
      yield event.error();
      yield event.sameChecked(state: state);
      rethrow;
    }
  }
}

abstract class _ICheckedContainer {
  bool get checked;
}

abstract class _AlwaysChecked implements _ICheckedContainer {
  @override
  bool get checked => true;
}

mixin _NotConfirmedEmitter on PermissionEvent {
  PermissionState sameChecked({
    required PermissionState state,
  }) =>
      PermissionState.notConfirmed(checked: state.checked);

  PermissionState reverseChecked({
    required PermissionState state,
  }) =>
      PermissionState.notConfirmed(checked: !state.checked);

  PermissionState unChecked() => const PermissionState.notConfirmed(checked: false);
}

mixin _ErrorEmitter on PermissionEvent {
  PermissionState error() => const PermissionState.error();
}

mixin _ConfirmEmitter on PermissionEvent implements _AlwaysChecked {
  PermissionState confirm() {
    if (!this.checked) {
      throw Exception('Необходимо поставить галочку, перед подтверждением согласия');
    }

    return const PermissionState.confirmed();
  }
}
