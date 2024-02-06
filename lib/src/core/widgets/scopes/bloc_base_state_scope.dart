import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocBaseStateScope<T extends BlocBase<State>, State> extends StatelessWidget {
  final Widget child;

  const BlocBaseStateScope({
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
typedef _BuildWhen<T> = bool Function(T previous, T next);

class BlocBaseBuilder<T extends BlocBase<State>, State> extends StatelessWidget {
  final _StateBuilder<State> builder;
  final _BuildWhen<State>? buildWhen;
  final T? bloc;

  const BlocBaseBuilder({
    Key? key,
    required this.builder,
    this.buildWhen,
    this.bloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = this.bloc ?? ValueScope.watch<T>(context);
    return StreamBuilder<State>(
      initialData: bloc.state,
      stream: buildWhen != null ? bloc.stream : bloc.stream.distinct(buildWhen),
      builder: (context, snapshot) => builder(context, snapshot.data!),
    );
  }
}
