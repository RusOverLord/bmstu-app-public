import 'package:flutter/widgets.dart';

class ValueScope<T> extends InheritedWidget {
  final T value;

  const ValueScope({
    Key? key,
    required Widget child,
    required this.value,
  }) : super(key: key, child: child);

  static T watch<T>(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<ValueScope<T>>();
    assert(scope != null, 'Cant watch ${ValueScope<T>} in context');
    return scope!.value;
  }

  static T read<T>(BuildContext context) {
    final inheritedElement = context.getElementForInheritedWidgetOfExactType<ValueScope<T>>();
    assert(inheritedElement != null, 'Cant read ${ValueScope<T>} in context');
    return (inheritedElement!.widget as ValueScope<T>).value;
  }

  @override
  bool updateShouldNotify(ValueScope<T> oldWidget) => value != oldWidget.value;
}
