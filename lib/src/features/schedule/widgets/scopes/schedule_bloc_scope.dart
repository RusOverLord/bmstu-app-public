import 'package:bbmstu_app/src/core/widgets/scopes/bloc_state_scope.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:bbmstu_app/src/features/schedule/domain/bloc/schedule_bloc.dart';
import 'package:flutter/material.dart';

import 'schedule_di_factory.dart';

typedef _Bloc = ScheduleBloc;

typedef _State = ScheduleState;

typedef _Event = ScheduleEvent;

typedef _BlocScope = ValueScope<_Bloc>;

typedef _StateScope = BlocStateScope<_Bloc, _Event, _State>;

@immutable
class ScheduleBlocScope extends StatefulWidget {
  final Widget child;

  const ScheduleBlocScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<ScheduleBlocScope> createState() => _ScheduleBlocScopeState();

  static _State watch(BuildContext context) => ValueScope.watch<_State>(context);

  static _State read(BuildContext context) => ValueScope.read<_State>(context);

  static _Bloc watchBloc(BuildContext context) => ValueScope.watch<_Bloc>(context);

  static _Bloc readBloc(BuildContext context) => ValueScope.read<_Bloc>(context);
}

class _ScheduleBlocScopeState extends State<ScheduleBlocScope> {
  _Bloc? _bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bloc?.close();
    _bloc = ScheduleDIFactory(context).scheduleBloc;
  }

  @override
  void dispose() {
    _bloc?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _BlocScope(
      value: _bloc!,
      child: _StateScope(
        child: widget.child,
      ),
    );
  }
}
