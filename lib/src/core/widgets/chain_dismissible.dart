import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum ChainDismissibleState {
  alive,
  dismissing,
  dismissed,
}

extension ChainDismissibleStateCompare on ChainDismissibleState {
  bool get isAlive => this == ChainDismissibleState.alive;

  bool get isDismissing => this == ChainDismissibleState.dismissing;

  bool get isDismissed => this == ChainDismissibleState.dismissed;
}

abstract class ChainDismissibleKey {}

final _notifierScopedProvider = ScopedProvider<ChainDismissibleNotifier>(
  (ref) => throw UnimplementedError(),
);

final _globalStateScopedProvider = ScopedProvider<ChainDismissibleGlobalState>(
  (ref) => throw UnimplementedError(),
);

abstract class ChainDismissibleNotifier<Key extends ChainDismissibleKey,
        State extends ChainDismissibleGlobalState<Key>>
    implements StateNotifier<State> {
  void onDismissing(Key key);

  void onDismissed(Key key);
}

abstract class ChainDismissibleGlobalState<T extends ChainDismissibleKey> {
  ChainDismissibleState operator [](T key);
}

typedef _NotifierBuilder = ChainDismissibleNotifier Function(
    T Function<T>(ProviderBase<Object?, T>));
typedef _NotifierState = ChainDismissibleGlobalState Function(
    T Function<T>(ProviderBase<Object?, T>));

class ChainDismissibleScope extends StatelessWidget {
  final Widget child;
  final _NotifierBuilder notifier;
  final _NotifierState state;

  const ChainDismissibleScope({
    Key? key,
    required this.child,
    required this.notifier,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        _notifierScopedProvider.overrideAs(notifier),
        _globalStateScopedProvider.overrideAs(state),
      ],
      child: child,
    );
  }
}

final _stateScopedProvider = ScopedProvider<ChainDismissibleState>(null);

typedef DismissibleBuilder = Widget Function(
    BuildContext context, ChainDismissibleNotifier notifier);

class ChainDismissibleStateBuilder extends HookWidget {
  final ChainDismissibleKey dismissibleKey;
  final DismissibleBuilder aliveBuilder;
  final DismissibleBuilder dismissingBuilder;
  final DismissibleBuilder? dismissedBuilder;

  const ChainDismissibleStateBuilder({
    Key? key,
    required this.dismissibleKey,
    required this.aliveBuilder,
    required this.dismissingBuilder,
    this.dismissedBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final notifier = useProvider(_notifierScopedProvider);
    return ProviderScope(
      overrides: [
        _stateScopedProvider.overrideAs(
          (watch) => watch(_globalStateScopedProvider)[dismissibleKey],
        )
      ],
      child: HookBuilder(
        builder: (BuildContext context) {
          final state = useProvider(_stateScopedProvider);
          switch (state) {
            case ChainDismissibleState.alive:
              return aliveBuilder(context, notifier);
            case ChainDismissibleState.dismissing:
              return dismissingBuilder(context, notifier);
            case ChainDismissibleState.dismissed:
              return dismissedBuilder?.call(context, notifier) ??
                  const SizedBox();
          }
        },
      ),
    );
  }
}

class ChainDismissibleBuilder extends HookWidget {
  final DismissibleBuilder builder;

  const ChainDismissibleBuilder({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final notifier = useProvider(_notifierScopedProvider);
    return builder(context, notifier);
  }
}
