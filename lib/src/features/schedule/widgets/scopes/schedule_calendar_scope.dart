import 'package:bbmstu_app/src/core/widgets/scopes/bloc_base_state_scope.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:bbmstu_app/src/features/schedule/domain/bloc/schedule_calendar_bloc.dart';
import 'package:flutter/material.dart';

import 'schedule_data_di_factory.dart';

typedef _Bloc = ScheduleCalendarBloc;

typedef _State = ScheduleCalendarState;

typedef _BlocScope = ValueScope<_Bloc>;

typedef _StateScope = BlocBaseStateScope<_Bloc, _State>;

typedef ScheduleCalendarBlocBuilder = BlocBaseBuilder<ScheduleCalendarBloc, ScheduleCalendarState>;

@immutable
class ScheduleCalendarScope extends StatefulWidget {
  final Widget child;

  const ScheduleCalendarScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<ScheduleCalendarScope> createState() => _ScheduleCalendarScopeState();

  static _State watch(BuildContext context) => ValueScope.watch<_State>(context);

  static _State read(BuildContext context) => ValueScope.read<_State>(context);

  static _Bloc watchBloc(BuildContext context) => ValueScope.watch<_Bloc>(context);

  static _Bloc readBloc(BuildContext context) => ValueScope.read<_Bloc>(context);
}

class _ScheduleCalendarScopeState extends State<ScheduleCalendarScope> with WidgetsBindingObserver {
  _Bloc? _bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance!.addObserver(this);
    _bloc?.close();
    _bloc = ScheduleDataDIFactory(context).scheduleCalendarBloc;
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    _bloc?.close();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _bloc?.restart();
    }
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
