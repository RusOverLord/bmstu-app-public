import 'package:bbmstu_app/src/features/schedule/presentation/view_models/week_view_model.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/schedule/day_tab_view.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';

class WeekView extends StatelessWidget {
  final WeekViewModel viewModel;

  const WeekView({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = context.theme.scheduleTheme.weekBarTheme.weekTypesTextStyle;
    return Column(
      children: <Widget>[
        Flexible(
          flex: 2,
          child: Text(
            viewModel.weekTitle,
            style: textStyle,
          ),
        ),
        Flexible(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 6 * devScale,
              horizontal: 20 * devScale,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: viewModel.days.map((e) => DayTabView(viewModel: e)).toList(),
            ),
          ),
        )
      ],
    );
  }
}
