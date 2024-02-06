import 'package:bbmstu_app/src/core/widgets/standard_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'bmstu_id_scope.dart';

@immutable
class BmstuIdRefreshIndicator extends StatelessWidget {
  final Widget child;

  const BmstuIdRefreshIndicator({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardRefreshIndicator.stream(
      stream: BmstuIdScope.watchBloc(context).stream.map(
              (event) => event.maybeMap(
                loading: (_) => StandardRefreshIndicatorState.loading,
                orElse: () => StandardRefreshIndicatorState.idle,
              ),
      ),
      onRefresh: () => BmstuIdScope.updateData(context),
      child: ListView(
        children: [child],
      ),
    );
  }
}
