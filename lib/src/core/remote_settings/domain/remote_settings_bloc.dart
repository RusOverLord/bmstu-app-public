import 'dart:async';

import 'package:bbmstu_app/src/core/remote_settings/data/remote_settings_repository.dart';
import 'package:bbmstu_app/src/core/remote_settings/domain/end_of_support.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_settings_bloc.freezed.dart';

@freezed
class RemoteSettingsState with _$RemoteSettingsState {
  const RemoteSettingsState._();

  const factory RemoteSettingsState({
    required bool showQrButtonOnMain,
    required String bmstuIdTitle,
    required String vkGroupUrl,
    required EndOfSupport endOfSupport,
  }) = _RemoteSettingsState;
}

class RemoteSettingsBloc extends Cubit<RemoteSettingsState> {
  late final StreamSubscription<RemoteSettings> _subscription;

  RemoteSettingsBloc({
    required IRemoteSettingsRepository repository,
  }) : super(repository.fetch().toState()) {
    _subscription = repository.watch().listen((event) => emit(event.toState()));
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}

extension on RemoteSettings {
  RemoteSettingsState toState() {
    return RemoteSettingsState(
      showQrButtonOnMain: showQrButtonOnMain,
      bmstuIdTitle: bmstuIdTitle,
      vkGroupUrl: vkGroupUrl,
      endOfSupport: endOfSupport,
    );
  }
}
