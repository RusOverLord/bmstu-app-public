import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocStateScope<T extends Bloc<Event, State>, Event, State> extends StatelessWidget {
  final Widget child;

  const BlocStateScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = ValueScope.watch<T>(context);
    return StreamBuilder<State>(
      initialData: bloc.state,
      stream: bloc.stream,
      builder: (context, snapshot) {
        final state = snapshot.data!;
        return ValueScope<State>(
          value: state,
          child: child,
        );
      },
    );
  }
}

typedef _StateBuilder<T> = Widget Function(BuildContext context, T state);

class BlocBuilder<T extends Bloc<Event, State>, Event, State> extends StatelessWidget {
  final _StateBuilder<State> builder;

  const BlocBuilder({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = ValueScope.watch<T>(context);
    return StreamBuilder<State>(
      initialData: bloc.state,
      stream: bloc.stream,
      builder: (context, snapshot) => builder(context, snapshot.data!),
    );
  }
}
