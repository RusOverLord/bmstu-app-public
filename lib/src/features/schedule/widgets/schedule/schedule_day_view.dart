import 'package:bbmstu_app/src/core/utility/collection_utils.dart';
import 'package:bbmstu_app/src/core/widgets/indent.dart';
import 'package:bbmstu_app/src/features/schedule/presentation/bloc/lesson_page_view_notifier.dart';
import 'package:bbmstu_app/src/features/schedule/presentation/view_models/lesson_view_model.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/schedule/lesson_view.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/schedule/lesson_metrics_scope.dart';
import 'package:flutter/widgets.dart';

@immutable
class ScheduleDayView extends StatelessWidget {
  final ScheduleDayViewModel viewModel;

  const ScheduleDayView({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (viewModel.isEmpty) {
      return const SizedBox();
    }

    return LessonMetricsScope(
      lessons: viewModel,
      child: ListView(
        padding: EdgeInsets.only(
          top: 8 * devScale,
          left: 20 * devScale,
          right: 20 * devScale,
          bottom: 20 * devScale,
        ),
        physics: const NeverScrollableScrollPhysics(),
        children: intermediateInsertion<LessonViewModel, Widget>(
          iterable: viewModel,
          itemMapper: (item) => LessonView(viewModel: item),
          insertionMapper: (item) => Indent.vertical(8 * devScale),
        ).toList(),
      ),
    );
  }
}
