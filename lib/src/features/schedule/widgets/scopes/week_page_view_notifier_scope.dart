import 'package:bbmstu_app/src/core/widgets/scopes/value_listenable_state_scope.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:bbmstu_app/src/features/schedule/presentation/bloc/week_page_view_notifier.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/schedule_data_di_factory.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'schedule_data_di_factory.dart';

typedef _Notifier = WeekPageViewNotifier;

typedef _State = WeekPageViewState;

typedef _BlocScope = ValueScope<_Notifier>;

typedef _StateScope = ValueListenableStateScope<_Notifier, _State>;

@immutable
class WeekPageViewNotifierScope extends StatefulWidget {
  final Widget child;

  const WeekPageViewNotifierScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<WeekPageViewNotifierScope> createState() => _WeekPageViewNotifierScopeState();

  static _State watch(BuildContext context) => ValueScope.watch<_State>(context);

  static _State read(BuildContext context) => ValueScope.read<_State>(context);

  static _Notifier watchBloc(BuildContext context) => ValueScope.watch<_Notifier>(context);

  static _Notifier readBloc(BuildContext context) => ValueScope.read<_Notifier>(context);
}

class _WeekPageViewNotifierScopeState extends State<WeekPageViewNotifierScope> {
  late _Notifier _notifier;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _notifier = ScheduleDataDIFactory(context).weekPageViewNotifier;
  }

  @override
  void dispose() {
    _notifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _BlocScope(
      value: _notifier,
      child: _StateScope(
        child: widget.child,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<_Notifier>('_notifier', _notifier));
  }
}
