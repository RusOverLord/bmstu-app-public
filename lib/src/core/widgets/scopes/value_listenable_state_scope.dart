import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ValueListenableStateScope<T extends ValueListenable<State>, State> extends StatelessWidget {
  final Widget child;

  const ValueListenableStateScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = ValueScope.watch<T>(context);
    return ValueListenableBuilder<State>(
        valueListenable: bloc,
        builder: (context, state, _) {
          return ValueScope<State>(
            value: state,
            child: child,
          );
        },
    );
  }
}
