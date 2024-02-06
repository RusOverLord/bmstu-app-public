import 'package:bbmstu_app/src/core/widgets/scopes/bloc_state_scope.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:bbmstu_app/src/features/schedule/domain/bloc/schedule_service.dart';
import 'package:flutter/material.dart';

import 'schedule_di_factory.dart';

typedef _Bloc = ScheduleService;
typedef _State = ScheduleServiceState;
typedef _Event = ScheduleServiceEvent;

typedef _StateScope = BlocStateScope<_Bloc, _Event, _State>;

@immutable
class ScheduleServiceScope extends StatelessWidget {
  final Widget child;

  const ScheduleServiceScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _BlocScope(
      child: _StateScope(
        child: child,
      ),
    );
  }

  static _State watch(BuildContext context) => ValueScope.watch<_State>(context);

  static _State read(BuildContext context) => ValueScope.read<_State>(context);

  static _Bloc watchBloc(BuildContext context) => ValueScope.watch<_Bloc>(context);

  static _Bloc readBloc(BuildContext context) => ValueScope.read<_Bloc>(context);
}

@immutable
class _BlocScope extends StatefulWidget {
  final Widget child;

  const _BlocScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<_BlocScope> createState() => _BlocScopeState();
}

class _BlocScopeState extends State<_BlocScope> {
  late _Bloc _bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bloc = ScheduleDIFactory(context).scheduleService;
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueScope<_Bloc>(
      value: _bloc,
      child: widget.child,
    );
  }
}
