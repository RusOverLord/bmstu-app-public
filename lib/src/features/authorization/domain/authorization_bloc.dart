import 'dart:async';

import 'package:bbmstu_app/src/core/fire_base/domain/firebase_bloc.dart';
import 'package:bbmstu_app/src/features/authorization/data/authorization_repository.dart';
import 'package:bbmstu_app/src/features/authorization/models/user.dart';
import 'package:bbmstu_app/src/features/authorization/models/user_type.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authorization_bloc.freezed.dart';

@freezed
class AuthorizationEvent with _$AuthorizationEvent {
  const AuthorizationEvent._();

  const factory AuthorizationEvent.loginBySearch({
    required UserType userType,
    required String scheduleUuid,
  }) = AuthorizationEventLoginBySearch;

  const factory AuthorizationEvent.updateUserInfo() = AuthorizationEventUpdateInfo;

  const factory AuthorizationEvent.login({
    required Completer<User> completer,
  }) = AuthorizationEventLogin;

  const factory AuthorizationEvent.logout() = AuthorizationEventLogout;

  const factory AuthorizationEvent.updateMainScheduleUuid({
    required String mainScheduleUuid,
  }) = AuthorizationEventUpdateMainScheduleUuid;
}

@freezed
class AuthorizationState with _$AuthorizationState {
  const AuthorizationState._();

  /// пользователь не авторизован, или даже не выбрал тип пользователя
  const factory AuthorizationState.notAuthorized({
    UserType? userType,
    String? mainScheduleUuidOverride,
  }) = AuthorizationStateNotAuthorized;

  /// пользователь вошёл в ЭУ
  const factory AuthorizationState.authorized({
    required User user,
    String? mainScheduleUuidOverride,
  }) = AuthorizationStateAuthorized;

  User? get user => map(
        notAuthorized: (_) => null,
        authorized: (authorized) => authorized.user,
      );

  UserType? get userType => map(
        notAuthorized: (notAuthorized) => notAuthorized.userType,
        authorized: (authorized) => authorized.user.userType,
      );

  bool get isAuthorized => user != null;

  String? get mainScheduleUuid => mainScheduleUuidOverride ?? user?.scheduleUuid;

  AuthorizationState merge(AuthorizationState? other) {
    if (other == null) {
      return this;
    }

    return map(
      notAuthorized: (notAuthorized) => AuthorizationState.notAuthorized(
        userType: other.userType ?? notAuthorized.userType,
        mainScheduleUuidOverride: other.mainScheduleUuidOverride ?? notAuthorized.mainScheduleUuidOverride,
      ),
      authorized: (authorized) => AuthorizationState.authorized(
        user: other.user ?? authorized.user,
        mainScheduleUuidOverride: other.mainScheduleUuidOverride ?? authorized.mainScheduleUuidOverride,
      ),
    );
  }
}

class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  final IAuthorizationRepository _repository;
  final FirebaseBloc _firebaseBloc;

  AuthorizationBloc({
    required IAuthorizationRepository repository,
    required FirebaseBloc firebaseBloc,
  })  : _repository = repository,
        _firebaseBloc = firebaseBloc,
        super(repository.getState()) {
    add(const AuthorizationEvent.updateUserInfo());
  }

  @override
  Stream<AuthorizationState> mapEventToState(AuthorizationEvent event) => event.map<Stream<AuthorizationState>>(
        loginBySearch: _loginBySearch,
        updateUserInfo: _updateUserInfo,
        login: _login,
        logout: _logout,
        updateMainScheduleUuid: _updateMainScheduleUuid,
      );

  Stream<AuthorizationState> _loginBySearch(AuthorizationEventLoginBySearch event) async* {
    try {
      await _repository.updateUserType(event.userType);
      await _repository.updateMainUuidOverride(event.scheduleUuid);
      yield event.notAuthorized();
    } catch (_) {
      rethrow;
    }
  }

  Stream<AuthorizationState> _updateUserInfo(AuthorizationEventUpdateInfo event) async* {
    try {
      final user = await _requestUpdateUserInfo();

      if (user == null) {
        yield event.notAuthorized(state);
      } else {
        yield event.authorized(state, user);
      }
    } catch (e) {
      rethrow;
    }
  }

  Stream<AuthorizationState> _login(AuthorizationEventLogin event) async* {
    try {
      final user = await _requestUpdateUserInfo();

      if (user == null) {
        throw LoginNullUserException();
      }

      await _repository.deleteMainUuidOverride();
      yield event.authorized(user);
      event.completer.complete(user);
    } catch (e, st) {
      event.completer.completeError(e, st);
      rethrow;
    }
  }

  Stream<AuthorizationState> _logout(AuthorizationEventLogout event) async* {
    try {
      await _repository.logout();
      yield event.notAuthorized(state);
    } catch (_) {
      rethrow;
    }
  }

  Stream<AuthorizationState> _updateMainScheduleUuid(AuthorizationEventUpdateMainScheduleUuid event) async* {
    try {
      await _repository.updateMainUuidOverride(event.mainScheduleUuid);
      yield event.copyWithMainScheduleUuidOverride(
        state: state,
        mainScheduleUuidOverride: event.mainScheduleUuid,
      );
    } catch (_) {
      rethrow;
    }
  }

  Future<User?> _requestUpdateUserInfo() {
    return _repository.updateUserInfo(
      firebaseToken: _firebaseBloc.state.token,
      mainScheduleUuid: state.mainScheduleUuid,
    );
  }
}

class LoginNullUserException implements Exception {}

extension on IAuthorizationRepository {
  AuthorizationState getState() {
    final userType = this.userType;

    if (userType == null) {
      return const AuthorizationState.notAuthorized();
    }

    final user = this.user;

    if (user == null) {
      return AuthorizationState.notAuthorized(
        mainScheduleUuidOverride: mainUuidOverride,
        userType: userType,
      );
    }

    return AuthorizationState.authorized(
      mainScheduleUuidOverride: mainUuidOverride,
      user: user,
    );
  }
}

extension on AuthorizationEventLoginBySearch {
  AuthorizationState notAuthorized() {
    return AuthorizationState.notAuthorized(
      userType: userType,
      mainScheduleUuidOverride: scheduleUuid,
    );
  }
}

extension on AuthorizationEventUpdateInfo {
  AuthorizationState notAuthorized(AuthorizationState state) {
    return const AuthorizationState.notAuthorized().merge(state);
  }

  AuthorizationState authorized(AuthorizationState state, User user) {
    return AuthorizationState.authorized(user: user).merge(state);
  }
}

extension on AuthorizationEventLogin {
  AuthorizationState authorized(User user) {
    return AuthorizationState.authorized(user: user);
  }
}

extension on AuthorizationEventLogout {
  AuthorizationState notAuthorized(AuthorizationState state) {
    return const AuthorizationState.notAuthorized().merge(state);
  }
}

extension on AuthorizationEventUpdateMainScheduleUuid {
  AuthorizationState copyWithMainScheduleUuidOverride({
    required AuthorizationState state,
    required String mainScheduleUuidOverride,
  }) {
    return state.copyWith(
      mainScheduleUuidOverride: mainScheduleUuidOverride,
    );
  }
}
