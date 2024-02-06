import 'dart:async';

import 'package:bbmstu_app/src/constants/platform.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_bloc.freezed.dart';

@freezed
abstract class FirebaseEvent with _$FirebaseEvent {
  const FirebaseEvent._();

  const factory FirebaseEvent.updateToken({
    required String token,
  }) = FirebaseEventUpdateToken;
}

@freezed
abstract class FirebaseState with _$FirebaseState {
  const factory FirebaseState({
    required String token,
  }) = _FirebaseState;
}

class FirebaseBloc extends Bloc<FirebaseEvent, FirebaseState> {
  late final StreamSubscription<String> _tokenSubscription;

  FirebaseBloc({
    required String token,
  })  : super(FirebaseState(token: token)) {
    platform.mapDeviceOrNull(
        mobile: () {
          _tokenSubscription = FirebaseMessaging.instance.onTokenRefresh.listen(
                (event) => add(FirebaseEvent.updateToken(token: event)),
          );
        },
    );
  }

  @override
  Future<void> close() {
    _tokenSubscription.cancel();
    return super.close();
  }

  @override
  Stream<FirebaseState> mapEventToState(FirebaseEvent event) => event.map<Stream<FirebaseState>>(
        updateToken: _updateToken,
      );

  Stream<FirebaseState> _updateToken(FirebaseEventUpdateToken event) async* {
    yield FirebaseState(token: event.token);
  }
}
