import 'dart:async';

import 'package:bbmstu_app/src/core/fire_base/widgets/firebase_scope.dart';
import 'package:bbmstu_app/src/core/network/widgets/network_scope.dart';
import 'package:bbmstu_app/src/core/settings/settings.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/bloc_state_scope.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:bbmstu_app/src/features/authorization/data/authorization_local_data_source.dart';
import 'package:bbmstu_app/src/features/authorization/data/authorization_repository.dart';
import 'package:bbmstu_app/src/features/authorization/domain/authorization_bloc.dart';
import 'package:bbmstu_app/src/features/authorization/models/user.dart';
import 'package:bbmstu_app/src/features/authorization/models/user_type.dart';
import 'package:bbmstu_app/src/features/personal_data_permission/widgets/personal_data_permission_scope.dart';
import 'package:bbmstu_app/src/features/search/search.dart';
import 'package:flutter/material.dart';

import 'confirm_logout_dialog.dart';
import 'eu_authorization_screen.dart';

typedef _Bloc = AuthorizationBloc;
typedef _State = AuthorizationState;
typedef _Event = AuthorizationEvent;

typedef _BlocScope = ValueScope<_Bloc>;
typedef _StateScope = BlocStateScope<_Bloc, _Event, _State>;

@immutable
class AuthorizationScope extends StatefulWidget {
  final Widget child;

  const AuthorizationScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<AuthorizationScope> createState() => _AuthorizationScopeState();

  static _State watch(BuildContext context) => ValueScope.watch<_State>(context);

  static _State read(BuildContext context) => ValueScope.read<_State>(context);

  static _Bloc watchBloc(BuildContext context) => ValueScope.watch<_Bloc>(context);

  static _Bloc readBloc(BuildContext context) => ValueScope.read<_Bloc>(context);

  static UserType watchUserType(BuildContext context) => _DataScope.watch(context, _StateField.userType).userType!;

  static UserType readUserType(BuildContext context) => _DataScope.read(context).userType!;

  static User? watchUser(BuildContext context) => _DataScope.watch(context, _StateField.user).user;

  static User? readUser(BuildContext context) => _DataScope.read(context).user;

  static String? watchMainScheduleUuid(BuildContext context) =>
      _DataScope.watch(context, _StateField.mainScheduleUuid).mainScheduleUuid;

  static String? readMainScheduleUuid(BuildContext context) => _DataScope.read(context).mainScheduleUuid;

  static bool watchIsAuthorized(BuildContext context) => watchUser(context) != null;

  static Future<void> loginBySearch(
    BuildContext context, {
    required UserType userType,
  }) async {
    final searchResult = await showSearchDialog(context);
    searchResult.mapOrNull(
      found: (found) {
        readBloc(context).add(AuthorizationEvent.loginBySearch(
          userType: userType,
          scheduleUuid: found.scheduleUuid,
        ));
      },
    );
  }

  static Future<void> logout(BuildContext context) async {
    final accept = await showConfirmLogoutDialog(context);

    if (accept) {
      readBloc(context).add(const AuthorizationEvent.logout());
    }
  }

  /// Если пользователь [user] уже есть - возвращает его.
  /// Иначе вызывает [PersonalDataPermissionScope.confirmedOrAsk],
  /// если согласие получено открывает экран авторизации и возвращает результат диалога.
  static Future<User?> getUserOrLogin(BuildContext context) async {
    final user = readUser(context);

    if (user != null) {
      return user;
    }

    final confirmedPDP = await PersonalDataPermissionScope.confirmedOrAsk(context);

    if (!confirmedPDP) {
      return null;
    }

    return showGeneralDialog<User>(
      context: context,
      barrierColor: Colors.transparent,
      pageBuilder: (buildContext, animation, secondaryAnimation) => const EuAuthorizationScreen(),
    );
  }

  static void updateMainScheduleUuid(
    BuildContext context, {
    required String mainScheduleUuid,
  }) =>
      readBloc(context).add(AuthorizationEvent.updateMainScheduleUuid(mainScheduleUuid: mainScheduleUuid));
}

class _AuthorizationScopeState extends State<AuthorizationScope> {
  late _Bloc _bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _bloc = _Bloc(
      repository: AuthorizationRepository(
        local: AuthorizationLocalDataSource(
          settings: SettingsScope.watch(context),
        ),
        remote: NetworkScope.watchUserApi(context),
      ),
      firebaseBloc: FirebaseScope.watchBloc(context),
    );
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _BlocScope(
      value: _bloc,
      child: _StateScope(
        child: _DataScopeBuilder(
          child: widget.child,
        ),
      ),
    );
  }
}

@immutable
class _DataScopeBuilder extends StatelessWidget {
  final Widget child;

  const _DataScopeBuilder({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = AuthorizationScope.watch(context);

    return _DataScope(
      userType: state.userType,
      user: state.user,
      mainScheduleUuid: state.mainScheduleUuid,
      child: child,
    );
  }
}

enum _StateField {
  userType,
  user,
  mainScheduleUuid,
}

class _DataScope extends InheritedModel<_StateField> {
  final UserType? userType;
  final User? user;
  final String? mainScheduleUuid;

  const _DataScope({
    Key? key,
    required Widget child,
    required this.userType,
    required this.user,
    required this.mainScheduleUuid,
  }) : super(
          key: key,
          child: child,
        );

  static _DataScope watch(BuildContext context, _StateField aspect) {
    return context.dependOnInheritedWidgetOfExactType<_DataScope>(aspect: aspect)!;
  }

  static _DataScope read(BuildContext context) {
    final inheritedWidget = context.getElementForInheritedWidgetOfExactType<_DataScope>()!.widget;
    return inheritedWidget as _DataScope;
  }

  @override
  bool updateShouldNotify(_DataScope oldWidget) =>
      userType != oldWidget.userType ||
      user != oldWidget.user ||
      mainScheduleUuid != oldWidget.mainScheduleUuid;

  @override
  bool updateShouldNotifyDependent(_DataScope oldWidget, Set<_StateField> dependencies) {
    final contains = dependencies.contains;
    return userType != oldWidget.userType && contains(_StateField.userType) ||
        user != oldWidget.user && contains(_StateField.user) ||
        mainScheduleUuid != oldWidget.mainScheduleUuid && contains(_StateField.mainScheduleUuid);
  }
}
