import 'package:bbmstu_app/src/core/settings/data/settings_local_data_source.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:flutter/material.dart';

typedef _Value = ISettingsLocalDataSource;

typedef _Scope = ValueScope<_Value>;

@immutable
class SettingsScope extends StatelessWidget {
  final _Value value;
  final Widget child;

  const SettingsScope({
    Key? key,
    required this.child,
    required this.value,
  }) : super(key: key);

  static _Value watch(BuildContext context) => ValueScope.watch<_Value>(context);

  static _Value read(BuildContext context) => ValueScope.read<_Value>(context);

  @override
  Widget build(BuildContext context) {
    return _Scope(
      value: value,
      child: child,
    );
  }
}
