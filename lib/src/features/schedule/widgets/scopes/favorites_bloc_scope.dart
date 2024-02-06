import 'package:bbmstu_app/src/core/widgets/scopes/bloc_state_scope.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:bbmstu_app/src/features/schedule/domain/bloc/favorites_bloc.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/schedule_event_bus_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/schedule_di_factory.dart';
import 'package:flutter/material.dart';
import 'package:bbmstu_app/src/features/schedule/models/models.dart';

typedef _Bloc = FavoritesBloc;

typedef _State = FavoritesState;

typedef _Event = FavoritesEvent;

typedef _BlocScope = ValueScope<_Bloc>;

typedef _StateScope = BlocStateScope<_Bloc, _Event, _State>;

class FavoritesBlocScope extends StatefulWidget {
  final Widget child;

  const FavoritesBlocScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  static _State watch(BuildContext context) => ValueScope.watch<_State>(context);

  static _State read(BuildContext context) => ValueScope.read<_State>(context);

  static _Bloc watchBloc(BuildContext context) => ValueScope.watch<_Bloc>(context);

  static _Bloc readBloc(BuildContext context) => ValueScope.read<_Bloc>(context);

  @override
  State<FavoritesBlocScope> createState() => _FavoritesScopeScopeState();

  static void removeFromFavorites(
    BuildContext context, {
    required Whom item,
  }) =>
      ScheduleEventBusScope.read(context).add(RemoveFavoriteEvent(uuid: item.uuid));
}

class _FavoritesScopeScopeState extends State<FavoritesBlocScope> {
  late _Bloc _bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bloc = ScheduleDIFactory(context).favoritesBloc;
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
