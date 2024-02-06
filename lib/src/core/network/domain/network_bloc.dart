import 'package:bbmstu_app/src/constants/constants.dart';
import 'package:bbmstu_app/src/core/network/data/network_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_bloc.freezed.dart';

@freezed
abstract class NetworkEvent with _$NetworkEvent {
  const NetworkEvent._();

  const factory NetworkEvent.overrideUrl({
    required String baseUrl,
  }) = NetworkEventOverrideUrl;

  const factory NetworkEvent.deleteUrlOverride() = NetworkEventDeleteUrlOverride;
}

@freezed
abstract class NetworkState with _$NetworkState {
  const NetworkState._();

  static const fromDefaultHost = NetworkState.idle(
    baseUrl: defaultHost,
    baseUrlIsOverridden: false,
  );

  const factory NetworkState.idle({
    required String baseUrl,
    required bool baseUrlIsOverridden,
  }) = NetworkStateIdle;

  const factory NetworkState.error({
    required String baseUrl,
    required bool baseUrlIsOverridden,
  }) = NetworkStateError;

  NetworkState toIdle() => NetworkState.idle(
        baseUrl: baseUrl,
        baseUrlIsOverridden: baseUrlIsOverridden,
      );

  NetworkState toError() => NetworkState.error(
        baseUrl: baseUrl,
        baseUrlIsOverridden: baseUrlIsOverridden,
      );
}

extension on INetworkRepository {
  NetworkState getState() {
    final baseUrl = this.baseUrl;

    if (baseUrl == null || baseUrl.isEmpty) {
      return NetworkState.fromDefaultHost;
    }

    return NetworkState.idle(
      baseUrl: baseUrl,
      baseUrlIsOverridden: false,
    );
  }
}

class NetworkBloc extends Bloc<NetworkEvent, NetworkState> {
  final INetworkRepository _repository;

  NetworkBloc({
    required INetworkRepository repository,
  })  : _repository = repository,
        super(repository.getState());

  @override
  Stream<NetworkState> mapEventToState(NetworkEvent event) => event.map<Stream<NetworkState>>(
        overrideUrl: _overrideUrl,
        deleteUrlOverride: _deleteUrlOverride,
      );

  Stream<NetworkState> _overrideUrl(NetworkEventOverrideUrl event) async* {
    try {
      await _repository.setBaseUrlOverride(event.baseUrl);
      yield state.copyWith(
        baseUrl: event.baseUrl,
        baseUrlIsOverridden: true,
      );
    } catch (_) {
      yield state.toError();
      rethrow;
    } finally {
      yield state.toIdle();
    }
  }

  Stream<NetworkState> _deleteUrlOverride(NetworkEventDeleteUrlOverride event) async* {
    try {
      await _repository.deleteBaseUrlOverride();
      yield NetworkState.fromDefaultHost;
    } catch (_) {
      yield state.toError();
      rethrow;
    } finally {
      yield state.toIdle();
    }
  }
}
