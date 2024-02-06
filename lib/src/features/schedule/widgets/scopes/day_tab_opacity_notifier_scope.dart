import 'package:bbmstu_app/src/core/widgets/scopes/value_listenable_state_scope.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:bbmstu_app/src/features/schedule/presentation/bloc/day_tab_opacity_notifier.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/schedule/schedule_controllers_di_factory.dart';
import 'package:flutter/material.dart';

typedef _Bloc = DayTabsOpacityNotifier;

typedef _State = DayTabsOpacityState;

typedef _BlocScope = ValueScope<_Bloc>;

typedef _StateScope = ValueListenableStateScope<_Bloc, _State>;

@immutable
class DayTabsOpacityNotifierScope extends StatefulWidget {
  final Widget child;

  const DayTabsOpacityNotifierScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<DayTabsOpacityNotifierScope> createState() => _DayTabsOpacityNotifierScopeState();

  static _State watch(BuildContext context) => ValueScope.watch<_State>(context);

  static _State read(BuildContext context) => ValueScope.read<_State>(context);

  static _Bloc watchBloc(BuildContext context) => ValueScope.watch<_Bloc>(context);

  static _Bloc readBloc(BuildContext context) => ValueScope.read<_Bloc>(context);
}

class _DayTabsOpacityNotifierScopeState extends State<DayTabsOpacityNotifierScope> {
  late _Bloc _bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bloc = ScheduleControllersDIFactory(context).dayTabsOpacityNotifier;
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
