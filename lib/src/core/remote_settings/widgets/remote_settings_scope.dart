import 'package:bbmstu_app/src/core/remote_settings/data/remote_settings_repository.dart';
import 'package:bbmstu_app/src/core/remote_settings/domain/end_of_support.dart';
import 'package:bbmstu_app/src/core/remote_settings/domain/remote_settings_bloc.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/bloc_base_state_scope.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:flutter/material.dart';

typedef _Bloc = RemoteSettingsBloc;

typedef _State = RemoteSettingsState;

typedef _BlocScope = ValueScope<_Bloc>;

@immutable
class RemoteSettingsScope extends StatefulWidget {
  final Widget child;
  final IRemoteSettingsRepository repository;

  const RemoteSettingsScope({
    Key? key,
    required this.child,
    required this.repository,
  }) : super(key: key);

  @override
  State<RemoteSettingsScope> createState() => _RemoteSettingsScopeState();

  static bool watchShowQrButtonOnMain(BuildContext context) => _DataScope.watch(context, _StateField.showQrButtonOnMain).showQrButtonOnMain;

  static bool readShowQrButtonOnMain(BuildContext context) => _DataScope.read(context).showQrButtonOnMain;

  static String watchBmstuIdTitle(BuildContext context) => _DataScope.watch(context, _StateField.bmstuIdTitle).bmstuIdTitle;

  static String readBmstuIdTitle(BuildContext context) => _DataScope.read(context).bmstuIdTitle;

  static String watchVkGroupUrl(BuildContext context) => _DataScope.watch(context, _StateField.vkGroupUrl).vkGroupUrl;

  static String readVkGroupUrl(BuildContext context) => _DataScope.read(context).vkGroupUrl;

  static EndOfSupport watchEndOfSupport(BuildContext context) => _DataScope.watch(context, _StateField.endOfSupport).endOfSupport;

  static EndOfSupport readEndOfSupport(BuildContext context) => _DataScope.read(context).endOfSupport;
}

class _RemoteSettingsScopeState extends State<RemoteSettingsScope> {
  late final _Bloc _bloc;

  @override
  void initState() {
    super.initState();

    _bloc = _Bloc(
      repository: widget.repository,
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

class _StateScope extends StatelessWidget {
  final Widget child;

  const _StateScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBaseBuilder<_Bloc, _State>(
      builder: (context, state) {
        return _DataScope(
          showQrButtonOnMain: state.showQrButtonOnMain,
          bmstuIdTitle: state.bmstuIdTitle,
          vkGroupUrl: state.vkGroupUrl,
          endOfSupport: state.endOfSupport,
          child: child,
        );
      },
    );
  }
}

enum _StateField {
  showQrButtonOnMain,
  bmstuIdTitle,
  vkGroupUrl,
  endOfSupport,
}

class _DataScope extends InheritedModel<_StateField> {
  final bool showQrButtonOnMain;
  final String bmstuIdTitle;
  final String vkGroupUrl;
  final EndOfSupport endOfSupport;

  const _DataScope({
    Key? key,
    required Widget child,
    required this.showQrButtonOnMain,
    required this.bmstuIdTitle,
    required this.vkGroupUrl,
    required this.endOfSupport,
  }) : super(key: key, child: child);

  static _DataScope watch(BuildContext context, _StateField aspect) {
    return context.dependOnInheritedWidgetOfExactType<_DataScope>(aspect: aspect)!;
  }

  static _DataScope read(BuildContext context) {
    final inheritedWidget = context.getElementForInheritedWidgetOfExactType<_DataScope>()!.widget;
    return inheritedWidget as _DataScope;
  }

  @override
  bool updateShouldNotify(_DataScope oldWidget) =>
      showQrButtonOnMain != oldWidget.showQrButtonOnMain ||
          bmstuIdTitle != oldWidget.bmstuIdTitle ||
          vkGroupUrl != oldWidget.vkGroupUrl ||
          endOfSupport != oldWidget.endOfSupport;

  @override
  bool updateShouldNotifyDependent(_DataScope oldWidget, Set<_StateField> dependencies) {
    final contains = dependencies.contains;
    return showQrButtonOnMain != oldWidget.showQrButtonOnMain && contains(_StateField.showQrButtonOnMain) ||
        bmstuIdTitle != oldWidget.bmstuIdTitle && contains(_StateField.bmstuIdTitle) ||
        vkGroupUrl != oldWidget.vkGroupUrl && contains(_StateField.vkGroupUrl) ||
        endOfSupport != oldWidget.endOfSupport && contains(_StateField.endOfSupport);
  }
}
