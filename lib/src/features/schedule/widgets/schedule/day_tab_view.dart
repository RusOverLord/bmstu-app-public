import 'package:bbmstu_app/src/core/widgets/indent.dart';
import 'package:bbmstu_app/src/features/schedule/presentation/view_models/week_view_model.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:bbmstu_app/src/core/themes/i_theme/i_schedule_theme.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/day_tab_opacity_notifier_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/week_page_view_controller_scope.dart';
import 'package:flutter/material.dart';

class DayTabView extends StatelessWidget {
  final DayTabViewModel viewModel;

  const DayTabView({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: AspectRatio(
        aspectRatio: 1,
        child: GestureDetector(
          onTap: () => WeekPageViewControllerScope.onTap(context, dayIndex: viewModel.index),
          child: _DayTabAnimatedBackground(
            viewModel: viewModel,
            theme: context.theme.scheduleTheme.weekBarTheme.dayTabTheme,
            child: _DayTabContent(
              viewModel: viewModel,
            ),
          ),
        ),
      ),
    );
  }
}

@immutable
class _DayTabContent extends StatelessWidget {
  final DayTabViewModel viewModel;

  const _DayTabContent({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return viewModel.map(
      common: (common) => _DayTabContentCommon(
        viewModel: common,
      ),
      editing: (editing) => _DayTabContentEditing(
        viewModel: editing,
      ),
    );
  }
}

@immutable
class _DayTabContentCommon extends StatelessWidget {
  final DayTabViewModelCommon viewModel;

  const _DayTabContentCommon({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(viewModel.dayOfWeek),
        Indent.vertical(2 * devScale),
        Text(viewModel.date),
      ],
    );
  }
}

@immutable
class _DayTabContentEditing extends StatelessWidget {
  final DayTabViewModelEditing viewModel;

  const _DayTabContentEditing({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(viewModel.dayOfWeek),
    );
  }
}

@immutable
class _DayTabAnimatedBackground extends StatelessWidget {
  final Widget child;
  final DayTabViewModel viewModel;
  final IDayTabTheme theme;

  const _DayTabAnimatedBackground({
    Key? key,
    required this.child,
    required this.viewModel,
    required this.theme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final opacity = DayTabsOpacityNotifierScope.watch(context).getOpacity(viewModel.index);

    return DecoratedBox(
      decoration: ShapeDecoration(
        color: theme.selectedBackgroundColor.withOpacity(opacity),
        shape: CircleBorder(
          side: opacity < 0.5
              ? BorderSide(
                  width: 1,
                  color: _borderColor,
                )
              : BorderSide.none,
        ),
      ),
      child: DefaultTextStyle(
        style: _textStyle(opacity),
        child: child,
      ),
    );
  }

  TextStyle _textStyle(double opacity) {
    if (opacity < 0.5) {
      if (viewModel.isToday) {
        return theme.todayTextStyle;
      } else {
        return theme.unSelectedTextStyle;
      }
    } else {
      return theme.selectedTextStyle;
    }
  }

  Color get _borderColor => viewModel.isToday ? theme.todayBorderColor : theme.borderColor;
}
