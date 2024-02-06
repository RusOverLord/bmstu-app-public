import 'package:bbmstu_app/src/core/widgets/scopes/bloc_base_state_scope.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:bbmstu_app/src/features/schedule/domain/bloc/favorites_switcher_bloc.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/add_to_favorites_event_handler_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/schedule_di_factory.dart';
import 'package:flutter/material.dart';

typedef _Bloc = FavoritesSwitcherBloc;

typedef _State = FavoritesSwitcherState;

typedef _BlocScope = ValueScope<_Bloc>;

typedef _StateScope = BlocBaseStateScope<_Bloc, _State>;

class FavoritesSwitcherBlocScope extends StatefulWidget {
  final Widget child;

  const FavoritesSwitcherBlocScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  static _State watch(BuildContext context) => ValueScope.watch<_State>(context);

  static _State read(BuildContext context) => ValueScope.read<_State>(context);

  static _Bloc watchBloc(BuildContext context) => ValueScope.watch<_Bloc>(context);

  static _Bloc readBloc(BuildContext context) => ValueScope.read<_Bloc>(context);

  @override
  State<FavoritesSwitcherBlocScope> createState() => _FavoritesScopeScopeState();
}

class _FavoritesScopeScopeState extends State<FavoritesSwitcherBlocScope> {
  late _Bloc _bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bloc = ScheduleDIFactory(context).favoriteSwitcherBloc;
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
        child: AddToFavoritesEventHandlerScope(
          child: widget.child,
        ),
      ),
    );
  }
}
