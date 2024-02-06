import 'dart:async';

import 'package:bbmstu_app/src/features/authorization/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'authorization_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';

part 'eu_authorization_bloc.freezed.dart';

const _maxAttemptsNumber = 5;
const _attemptDelay = Duration(seconds: 3);

@freezed
abstract class EuAuthorizationEvent with _$EuAuthorizationEvent {
  const EuAuthorizationEvent._();

  @With(_LogsInEmitter)
  @With(_AuthorizedEmitter)
  @With(_ErrorEmitter)
  @With(_LoginCaller)
  const factory EuAuthorizationEvent.initialUpdateInfo() = EuAuthorizationEventInitialUpdateInfo;

  @Implements(_AttemptContainer)
  @With(_LoadingEmitter)
  @With(_AuthorizedEmitter)
  @With(_ErrorEmitter)
  @With(_LoginCaller)
  @With(_UpdateInfoEventCaller)
  const factory EuAuthorizationEvent.updateInfo({
    @Default(0) int attempt,
  }) = EuAuthorizationEventUpdateInfo;
}

@freezed
abstract class EuAuthorizationState with _$EuAuthorizationState {
  const EuAuthorizationState._();

  const factory EuAuthorizationState.loading() = EuAuthorizationStateLoading;

  const factory EuAuthorizationState.logsIn() = EuAuthorizationStateLogsIn;

  const factory EuAuthorizationState.authorized({
    required User user,
  }) = EuAuthorizationStateAuthorized;

  const factory EuAuthorizationState.error() = EuAuthorizationStateError;
}

class EuAuthorizationBloc extends Bloc<EuAuthorizationEvent, EuAuthorizationState> {
  final AuthorizationBloc _authorizationBloc;

  EuAuthorizationBloc({
    required AuthorizationBloc authorizationBloc,
  })  : _authorizationBloc = authorizationBloc,
        super(const EuAuthorizationState.loading()) {
    add(const EuAuthorizationEvent.initialUpdateInfo());
  }

  @override
  Stream<Transition<EuAuthorizationEvent, EuAuthorizationState>> transformEvents(
    Stream<EuAuthorizationEvent> events,
    // ignore: deprecated_member_use
    TransitionFunction<EuAuthorizationEvent, EuAuthorizationState> transitionFn,
  ) {
    return events.switchMap(transitionFn);
  }

  @override
  Stream<EuAuthorizationState> mapEventToState(EuAuthorizationEvent event) => event.map<Stream<EuAuthorizationState>>(
        initialUpdateInfo: _initialUpdateInfo,
        updateInfo: _updateInfo,
        // handleAuthBloc: _handleAuthBloc,
      );

  Stream<EuAuthorizationState> _initialUpdateInfo(EuAuthorizationEventInitialUpdateInfo event) async* {
    try {
      final user = await event.login(bloc: _authorizationBloc);
      yield event.authorized(user: user);
    } on LoginNullUserException {
      yield event.logsIn();
    } catch (_) {
      yield event.error();
      rethrow;
    }
  }

  Stream<EuAuthorizationState> _updateInfo(EuAuthorizationEventUpdateInfo event) async* {
    yield event.loading();

    try {
      final user = await event.login(bloc: _authorizationBloc);
      yield event.authorized(user: user);
    } catch (_) {}

    if (event.attempt < _maxAttemptsNumber) {
      await Future.delayed(_attemptDelay);
      event.updateInfo(bloc: this);
      return;
    }

    yield event.error();
  }
}

abstract class _AttemptContainer {
  int get attempt;
}

mixin _LogsInEmitter on EuAuthorizationEvent {
  EuAuthorizationState logsIn() => const EuAuthorizationState.logsIn();
}

mixin _AuthorizedEmitter on EuAuthorizationEvent {
  EuAuthorizationState authorized({
    required User user,
  }) =>
      EuAuthorizationState.authorized(user: user);
}

mixin _UpdateInfoEventCaller on EuAuthorizationEvent implements _AttemptContainer {
  void updateInfo({
    required EuAuthorizationBloc bloc,
  }) => bloc.add(EuAuthorizationEvent.updateInfo(attempt: attempt + 1));
}

mixin _LoadingEmitter on EuAuthorizationEvent {
  EuAuthorizationState loading() => const EuAuthorizationState.loading();
}

mixin _ErrorEmitter on EuAuthorizationEvent {
  EuAuthorizationState error() => const EuAuthorizationState.error();
}

mixin _LoginCaller on EuAuthorizationEvent {
  Future<User> login({
    required AuthorizationBloc bloc,
  }) {
    final completer = Completer<User>();
    bloc.add(AuthorizationEvent.login(completer: completer));
    return completer.future;
  }
}
