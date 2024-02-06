import 'dart:async';
import 'package:bbmstu_app/src/features/bmstu_id_onboarding/data/onboarding_repository.dart';
import 'package:bbmstu_app/src/features/bmstu_id_onboarding/domain/models/models.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bmstu_id_onboarding_cubit.freezed.dart';

abstract class IOnboardingCubit implements BlocBase<BmstuIdOnboardingState> {}

@freezed
class BmstuIdOnboardingState with _$BmstuIdOnboardingState {
  const BmstuIdOnboardingState._();

  const factory BmstuIdOnboardingState.loading() = BmstuIdOnboardingStateLoading;

  const factory BmstuIdOnboardingState.idle({
    required BmstuIdOnboardingList list,
  }) = BmstuIdOnboardingStateIdle;

  const factory BmstuIdOnboardingState.error({
    BmstuIdOnboardingList? list,
  }) = BmstuIdOnboardingStateError;

  bool get isLoading => mapOrNull(loading: (loading) => true) ?? false;

  BmstuIdOnboardingList? get list => map(
        loading: (_) => null,
        idle: (data) => data.list,
        error: (error) => error.list,
      );

  T mapList<T>({
    required T Function() hasNot,
    required T Function(BmstuIdOnboardingList list) has,
  }) {
    final list = this.list;

    if (list == null) {
      return hasNot();
    } else {
      return has(list);
    }
  }

  BmstuIdOnboardingState toError() => BmstuIdOnboardingState.error(list: list);
}

class BmstuIdOnboardingCubit extends Cubit<BmstuIdOnboardingState> implements IOnboardingCubit {
  late final StreamSubscription<BmstuIdOnboardingList>? _subscription;

  BmstuIdOnboardingCubit({
    required BmstuIdOnboardingState initialState,
    required IOnboardingRepository repository,
  }) : super(initialState) {
    try {
      _subscription = repository.getOnboardingList().listen(
        (event) => emit(BmstuIdOnboardingState.idle(list: event)),
        onError: (e) => state.mapList(
          hasNot: () => emit(const BmstuIdOnboardingState.error()),
          has: (list) {
            emit(state.toError());
            emit(BmstuIdOnboardingState.idle(list: list));
          },
        ),
      );
    } catch (e, st) {
      addError(e, st);
      emit(const BmstuIdOnboardingState.error());
    }
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
