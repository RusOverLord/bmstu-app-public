import 'package:bbmstu_app/src/core/widgets/scopes/value_listenable_state_scope.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:bbmstu_app/src/features/schedule/presentation/bloc/lesson_page_view_notifier.dart';
import 'package:flutter/material.dart';

import 'schedule_data_di_factory.dart';

typedef _Bloc = LessonPageViewNotifier;

typedef _State = LessonPageViewNotifierState;

typedef _BlocScope = ValueScope<_Bloc>;

typedef _StateScope = ValueListenableStateScope<_Bloc, _State>;

@immutable
class LessonPageViewNotifierScope extends StatefulWidget {
  final Widget child;

  const LessonPageViewNotifierScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<LessonPageViewNotifierScope> createState() => _LessonPageViewNotifierScopeState();

  static _State watch(BuildContext context) => ValueScope.watch<_State>(context);

  static _State read(BuildContext context) => ValueScope.read<_State>(context);

  static _Bloc watchBloc(BuildContext context) => ValueScope.watch<_Bloc>(context);

  static _Bloc readBloc(BuildContext context) => ValueScope.read<_Bloc>(context);
}

class _LessonPageViewNotifierScopeState extends State<LessonPageViewNotifierScope> {
  late _Bloc _bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bloc = ScheduleDataDIFactory(context).lessonPageViewNotifier;
  }

  @override
  void dispose() {
    _bloc.dispose();
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
