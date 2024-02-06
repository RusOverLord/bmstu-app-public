import 'package:bbmstu_app/src/core/widgets/scopes/bloc_base_state_scope.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:bbmstu_app/src/features/schedule/models/models.dart';
import 'package:bbmstu_app/src/features/schedule/presentation/bloc/lesson_timer_bloc.dart';
import 'package:flutter/material.dart';

typedef _Bloc = LessonTimer;

typedef _State = LessonTimerState;

typedef _BlocScope = ValueScope<_Bloc>;

typedef _StateScope = BlocBaseStateScope<_Bloc, _State>;

abstract class LessonTimerScope implements Widget {
  factory LessonTimerScope({
    Key? key,
    required Widget child,
    required ScheduleDay scheduleDay,
  }) = _LessonTimerScope;

  factory LessonTimerScope.empty({
    Key? key,
    required Widget child,
  }) = _LessonTimerScopeEmpty;

  static _State watch(BuildContext context) => ValueScope.watch<_State>(context);

  static _State read(BuildContext context) => ValueScope.read<_State>(context);
}

@immutable
class _LessonTimerScope extends StatefulWidget implements LessonTimerScope {
  final Widget child;
  final ScheduleDay scheduleDay;

  const _LessonTimerScope({
    Key? key,
    required this.child,
    required this.scheduleDay,
  }) : super(key: key);

  @override
  State<_LessonTimerScope> createState() => _LessonTimerScopeState();
}

class _LessonTimerScopeState extends State<_LessonTimerScope> with WidgetsBindingObserver {
  late _Bloc _bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance!.addObserver(this);
    _bloc = LessonTimer.scheduleDay(
      scheduleDay: widget.scheduleDay,
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    _bloc.close();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _bloc.updateState();
    }
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

@immutable
class _LessonTimerScopeEmpty extends StatelessWidget implements LessonTimerScope {
  final Widget child;

  const _LessonTimerScopeEmpty({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueScope<_State>(
      value: const _State.empty(),
      child: child,
    );
  }
}
