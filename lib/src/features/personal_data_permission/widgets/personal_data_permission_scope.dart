import 'dart:async';

import 'package:bbmstu_app/src/core/settings/settings.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/bloc_state_scope.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:bbmstu_app/src/features/personal_data_permission/data/permission_local_data_source.dart';
import 'package:bbmstu_app/src/features/personal_data_permission/data/permission_repository.dart';
import 'package:bbmstu_app/src/features/personal_data_permission/data/permission_type.dart';
import 'package:bbmstu_app/src/features/personal_data_permission/domain/permission_bloc.dart';
import 'package:bbmstu_app/src/features/personal_data_permission/domain/permission_dialog_result.dart';
import 'package:flutter/material.dart';

import 'permission_dialog.dart';

typedef _Bloc = PermissionBloc;

typedef _State = PermissionState;

typedef _BlocScope = ValueScope<_Bloc>;

typedef _StateScope = BlocStateScope<_Bloc, PermissionEvent, _State>;

@immutable
class PersonalDataPermissionScope extends StatefulWidget {
  final Widget child;
  final PermissionType type;

  const PersonalDataPermissionScope({
    Key? key,
    required this.child,
    required this.type,
  }) : super(key: key);

  @override
  State<PersonalDataPermissionScope> createState() => _PersonalDataPermissionScopeState();

  static _State watchState(BuildContext context) => ValueScope.watch<_State>(context);

  static _State readState(BuildContext context) => ValueScope.read<_State>(context);

  static _Bloc watchBloc(BuildContext context) => ValueScope.watch<_Bloc>(context);

  static _Bloc readBloc(BuildContext context) => ValueScope.read<_Bloc>(context);

  /// если разрешение уже есть - возвращаем true
  /// иначе показываем диалог и возвращаем:
  /// true - если [PermissionDialogResult.agree]
  /// false - если [PermissionDialogResult.disagree]
  static Future<bool> confirmedOrAsk(BuildContext context) async {
    if (readState(context).isConfirmed) {
      return true;
    }

    return (await showDialog(context)).isAgree;
  }

  static Future<PermissionDialogResult> showDialog(BuildContext context) async {
    final bloc = readBloc(context);

    /// если подтвердили - закрываем диалог,
    /// в классе состояния делать нельзя, так как
    /// контекст не тот, который нужен
    bloc.stream.firstWhere((event) => event.isConfirmed).then(
          (_) => Navigator.of(context).pop(PermissionDialogResult.agree),
        );

    final result = await showGeneralDialog<PermissionDialogResult>(
      context: context,
      barrierColor: Colors.transparent,
      pageBuilder: (buildContext, animation, secondaryAnimation) => _BlocScope(
        value: bloc,
        child: const _StateScope(
          child: PermissionDialog(),
        ),
      ),
    );

    if (result == null) {
      // при закрытии диалога снимаем у блока галочку
      bloc.add(const PermissionEvent.uncheck());
      return PermissionDialogResult.disagree;
    }

    return result;
  }

  static void confirm(BuildContext context) => readBloc(context).add(const PermissionEvent.confirm());
}

class _PersonalDataPermissionScopeState extends State<PersonalDataPermissionScope> {
  late _Bloc _bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final settings = SettingsScope.watch(context);

    _bloc = _Bloc(
      repository: PermissionRepository(
        local: PermissionLocalDataSource(
          settings: settings,
          type: widget.type,
        ),
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
