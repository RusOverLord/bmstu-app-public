import 'package:bbmstu_app/src/core/network/widgets/network_scope.dart';
import 'package:bbmstu_app/src/core/settings/settings.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/bloc_state_scope.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:bbmstu_app/src/features/bmstu_id/data/bmstu_id_repository.dart';
import 'package:bbmstu_app/src/features/bmstu_id/data/bmstu_id_local_data_source.dart';
import 'package:bbmstu_app/src/features/bmstu_id/domain/bmstu_id_bloc.dart';
import 'package:bbmstu_app/src/features/bmstu_id/domain/model/models.dart';
import 'package:flutter/material.dart';

typedef _Bloc = BmstuIdBloc;

typedef _Event = BmstuIdEvent;

typedef _State = BmstuIdState;

typedef _BlocScope = ValueScope<_Bloc>;

@immutable
class BmstuIdScope extends StatefulWidget {
  final Widget child;

  const BmstuIdScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<BmstuIdScope> createState() => _BmstuIdScopeState();

  static _State watch(BuildContext context) => ValueScope.watch<_State>(context);

  static _State read(BuildContext context) => ValueScope.read<_State>(context);

  static _Bloc watchBloc(BuildContext context) => ValueScope.watch<_Bloc>(context);

  static _Bloc readBloc(BuildContext context) => ValueScope.read<_Bloc>(context);

  static void completeFirstOpen(BuildContext context) => readBloc(context).add(const _Event.completeFirstOpen());

  static void updateData(BuildContext context) => readBloc(context).add(const _Event.updateData());

  static BmstuId watchBmstuId(BuildContext context) => _StateScope.watch(context, _StateField.bmstuId).bmstuId;

  static BmstuId readBmstuId(BuildContext context) => _StateScope.read(context).bmstuId;

  static bool watchFirstOpen(BuildContext context) => _StateScope.watch(context, _StateField.firstOpen).firstOpen;

  static bool readFirstOpen(BuildContext context) => _StateScope.read(context).firstOpen;
}

class _BmstuIdScopeState extends State<BmstuIdScope> {
  _Bloc? _bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _bloc?.close();
    _bloc = _Bloc(
      repository: BmstuIdRepository(
        local: BmstuIdLocalDataSource(
          settings: SettingsScope.watch(context),
        ),
        remote: NetworkScope.watchBmstuIdApi(context),
      ),
    );
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
      child: _StateScopeBuilder(
        child: widget.child,
      ),
    );
  }
}

@immutable
class _StateScopeBuilder extends StatelessWidget {
  final Widget child;

  const _StateScopeBuilder({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<_Bloc, _Event, _State>(
      builder: (context, state) => _StateScope(
        firstOpen: state.firstOpen,
        bmstuId: state.bmstuId,
        child: child,
      ),
    );
  }
}

enum _StateField {
  firstOpen,
  bmstuId,
}

class _StateScope extends InheritedModel<_StateField> {
  final bool firstOpen;
  final BmstuId bmstuId;

  const _StateScope({
    Key? key,
    required Widget child,
    required this.firstOpen,
    required this.bmstuId,
  }) : super(key: key, child: child);

  static _StateScope watch(BuildContext context, [_StateField? aspect]) {
    return context.dependOnInheritedWidgetOfExactType<_StateScope>(aspect: aspect)!;
  }

  static _StateScope read(BuildContext context) {
    final inheritedWidget = context.getElementForInheritedWidgetOfExactType<_StateScope>()!.widget;
    return inheritedWidget as _StateScope;
  }

  @override
  bool updateShouldNotify(_StateScope old) => firstOpen != old.firstOpen || bmstuId != old.bmstuId;

  @override
  bool updateShouldNotifyDependent(_StateScope old, Set<_StateField> dependencies) {
    final contains = dependencies.contains;
    return firstOpen != old.firstOpen && contains(_StateField.firstOpen) ||
        bmstuId != old.bmstuId && contains(_StateField.bmstuId);
  }
}
