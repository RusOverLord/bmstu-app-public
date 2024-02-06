import 'package:bbmstu_app/src/core/fire_base/domain/firebase_bloc.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/bloc_state_scope.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:flutter/material.dart';

typedef _Bloc = FirebaseBloc;

typedef _Event = FirebaseEvent;

typedef _State = FirebaseState;

typedef _BlocScope = ValueScope<_Bloc>;

typedef _StateScope = BlocStateScope<_Bloc, _Event, _State>;

@immutable
class FirebaseScope extends StatefulWidget {
  final Widget child;
  final String token;

  const FirebaseScope({
    Key? key,
    required this.child,
    required this.token,
  }) : super(key: key);

  @override
  State<FirebaseScope> createState() => _FirebaseScopeState();

  static _State watch(BuildContext context) => ValueScope.watch<_State>(context);

  static _State read(BuildContext context) => ValueScope.read<_State>(context);

  static _Bloc watchBloc(BuildContext context) => ValueScope.watch<_Bloc>(context);

  static _Bloc readBloc(BuildContext context) => ValueScope.read<_Bloc>(context);

  static String watchToken(BuildContext context) => watch(context).token;

  static String readToken(BuildContext context) => read(context).token;
}

class _FirebaseScopeState extends State<FirebaseScope> {
  late final _Bloc _bloc;

  @override
  void initState() {
    super.initState();

    _bloc = _Bloc(
      token: widget.token,
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
        child: widget.child,
      ),
    );
  }
}
