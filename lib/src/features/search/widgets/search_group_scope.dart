import 'package:bbmstu_app/src/core/network/widgets/network_scope.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/bloc_state_scope.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/schedule/screen/schedule_screen.dart';
import 'package:bbmstu_app/src/features/search/data/search_repository.dart';
import 'package:bbmstu_app/src/features/search/domain/bloc/search_bloc.dart';
import 'package:bbmstu_app/src/features/search/domain/models/search_item.dart';
import 'package:bbmstu_app/src/features/search/domain/models/search_step_type.dart';
import 'package:bbmstu_app/src/features/search/search.dart';
import 'package:flutter/material.dart';

typedef _Bloc = SearchBloc;

typedef _State = SearchBlocState;

typedef _Event = SearchBlocEvent;

typedef _BlocScope = ValueScope<_Bloc>;

typedef _StateScope = BlocStateScope<_Bloc, _Event, _State>;

class SearchGroupScope extends StatefulWidget {
  final Widget child;
  const SearchGroupScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  static _State watchState(BuildContext context) =>
      ValueScope.watch<_State>(context);

  static _Bloc watchBloc(BuildContext context) =>
      ValueScope.watch<_Bloc>(context);

  static _Bloc readBloc(BuildContext context) =>
      ValueScope.read<_Bloc>(context);

  static void itemTap({
    required BuildContext context,
    required SearchItem searchItem,
  }) {
    if (searchItem.searchStepType.isGroup) {
      final isDialog = SearchScreen.of(context)!.isDialog;
      if (isDialog) {
        final result = SearchDialogResult.found(scheduleUuid: searchItem.uuid);
        Navigator.of(context).pop(result);
      } else {
        pushScheduleDialog(context, searchItem.uuid);
      }
    } else {
      readBloc(context).add(SearchBlocEvent.doStepSearch(searchItem));
    }
  }

  @override
  State<SearchGroupScope> createState() => _SearchGroupScopeState();
}

class _SearchGroupScopeState extends State<SearchGroupScope> {
  late _Bloc _bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bloc = _Bloc(
      repository: SearchRepository(
        cache: SearchCache(),
        remote: NetworkScope.watchSearchApi(context),
      ),
    );
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
