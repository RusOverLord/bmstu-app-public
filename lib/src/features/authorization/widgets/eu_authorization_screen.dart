import 'dart:async';

import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:bbmstu_app/src/features/authorization/domain/eu_authorization_bloc.dart';
import 'package:bbmstu_app/src/features/authorization/models/user.dart';
import 'package:flutter/material.dart';
import 'authorization_scope.dart';
import 'failed_login_view.dart';
import 'login_loading_view.dart';
import 'login_web_view.dart';

import 'package:flutter/widgets.dart';

typedef _Bloc = EuAuthorizationBloc;

typedef _Event = EuAuthorizationEvent;

typedef _BlocScope = ValueScope<_Bloc>;

class EuAuthorizationScope {
  static _Bloc watchBloc(BuildContext context) => ValueScope.watch<_Bloc>(context);

  static _Bloc readBloc(BuildContext context) => ValueScope.read<_Bloc>(context);

  static void updateInfo(BuildContext context) => readBloc(context).add(const _Event.updateInfo());

  static void cancel(BuildContext context) => Navigator.of(context).pop();
}

@immutable
class EuAuthorizationScreen extends StatefulWidget {
  const EuAuthorizationScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<EuAuthorizationScreen> createState() => _EuAuthorizationScreenState();
}

class _EuAuthorizationScreenState extends State<EuAuthorizationScreen> {
  late _Bloc _bloc;
  late StreamSubscription<EuAuthorizationState> _subscription;
  _LoginScreenType screenType = _LoginScreenType.loading;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _bloc = _Bloc(
      authorizationBloc: AuthorizationScope.watchBloc(context),
    );

    _subscription = _bloc.stream.listen((event) {
      event.mapOrNull(
        logsIn: (_) => _changeScreenType(_LoginScreenType.web),
        loading: (_) => _changeScreenType(_LoginScreenType.loading),
        authorized: (authorized) => _completeAuthorization(authorized.user),
        error: (_) => _changeScreenType(_LoginScreenType.error),
      );
    });
  }

  void _changeScreenType(_LoginScreenType type) {
    if (screenType != type) {
      screenType = type;
      setState(() {});
    }
  }

  void _completeAuthorization(User user) => Navigator.of(context).pop(user);

  @override
  void dispose() {
    _subscription.cancel();
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _BlocScope(
      value: _bloc,
      child: _selectPage(),
    );
  }

  Widget _selectPage() {
    switch (screenType) {
      case _LoginScreenType.loading:
        return const LoginLoadingView();
      case _LoginScreenType.web:
        return const LoginWebView();
      case _LoginScreenType.error:
        return const LoginErrorView();
    }
  }
}

enum _LoginScreenType {
  loading,
  web,
  error,
}
