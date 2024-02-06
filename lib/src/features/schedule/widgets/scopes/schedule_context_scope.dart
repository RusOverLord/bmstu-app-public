import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:flutter/widgets.dart';

enum ScheduleScreenType {
  main,
  favorite,
  editing,
}

extension ScheduleScreenTypeExtension on ScheduleScreenType {
  bool get isMain => this == ScheduleScreenType.main;

  bool get isFavorite => this == ScheduleScreenType.favorite;

  bool get isEditing => this == ScheduleScreenType.editing;

  bool get isNotMain => !isMain;

  bool get isNotFavorite => !isFavorite;

  bool get isNotEditing => !isEditing;
}

class ScheduleContext {
  final String scheduleUuid;
  final ScheduleScreenType screenType;

  ScheduleContext({
    required this.scheduleUuid,
    required this.screenType,
  });
}

typedef _Value = ScheduleContext;

typedef _Scope = ValueScope<_Value>;

@immutable
class ScheduleContextScope extends StatelessWidget {
  final _Value value;
  final Widget child;

  const ScheduleContextScope({
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
