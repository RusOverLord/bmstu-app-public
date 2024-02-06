import 'package:bbmstu_app/src/core/widgets/standard_error_label.dart';
import 'package:flutter/widgets.dart';

import 'search_group_scope.dart';

@immutable
class SearchErrorLabel extends StatelessWidget {
  const SearchErrorLabel({
    Key? key,
  })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = SearchGroupScope.watchBloc(context);
    return StreamBuilder<bool>(
      initialData: bloc.state.showErrorLabel,
      stream: bloc.stream.map((event) => event.showErrorLabel).distinct(),
      builder: (context, snapshot) {
        final show = snapshot.data!;

        if (show) {
          return const StandardErrorLabel.noConnection();
        }

        return const SizedBox();
      },
    );
  }
}

