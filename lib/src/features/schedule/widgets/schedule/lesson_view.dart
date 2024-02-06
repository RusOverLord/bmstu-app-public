import 'package:bbmstu_app/src/core/extensions/duration.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:bbmstu_app/src/features/schedule/models/models.dart';
import 'package:bbmstu_app/src/features/schedule/presentation/view_models/lesson_view_model.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/lesson_timer_scope.dart';
import 'package:flutter/material.dart';
import 'package:bbmstu_app/src/core/widgets/indent.dart';
import 'package:bbmstu_app/src/core/widgets/standard_icons.dart';
import 'package:bbmstu_app/src/core/widgets/standard_rounded_wrap.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/schedule/lesson_container.dart';
import 'package:bbmstu_app/main.dart';
import 'package:extended_text/extended_text.dart';

final iconSize = 14 * devScale;

@immutable
class LessonView extends StatelessWidget {
  final LessonViewModel viewModel;

  const LessonView({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _LessonWrap(
      lesson: viewModel.lesson,
      child: LessonContainer.inList(
        params: LessonContainerParametersInList(
          cabinetIcon: const _CabinetIcon(),
          time: _TimeView(
            time: viewModel.time,
          ),
          cabinet: _CabinetView(
            cabinet: viewModel.cabinet,
          ),
          name: _NameView(
            name: viewModel.name,
            type: viewModel.type,
          ),
          whom: _WhomView(
            whom: viewModel.whom,
          ),
          divider: _LessonDivider(
            lesson: viewModel.lesson,
          ),
        ),
      ),
    );
  }
}

@immutable
class _CabinetIcon extends StatelessWidget {
  const _CabinetIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.scheduleTheme.lessonTheme;
    return Icon(
      StandardIcons.lesson_cabinet,
      size: iconSize,
      color: theme.undefinedCabinetColor,
    );
  }
}

@immutable
class CabinetPlaceholder extends StatelessWidget {
  static final size = Size(26 * devScale, 1 * devScale);

  const CabinetPlaceholder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.scheduleTheme.lessonTheme;
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox.fromSize(
        size: size,
        child: ColoredBox(
          color: theme.undefinedCabinetColor,
        ),
      ),
    );
  }
}

@immutable
class _CabinetView extends StatelessWidget {
  final String cabinet;

  const _CabinetView({
    Key? key,
    required this.cabinet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (cabinet.isEmpty) {
      return const CabinetPlaceholder();
    }

    final theme = context.theme.scheduleTheme.lessonTheme;
    return Text(
      cabinet,
      style: theme.cabinetTextStyle,
    );
  }
}

@immutable
class _TimeIcon extends StatelessWidget {
  const _TimeIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.scheduleTheme.lessonTheme;
    return Icon(
      StandardIcons.lesson_time,
      size: iconSize,
      color: theme.undefinedCabinetColor,
    );
  }
}

@immutable
class _TimeView extends StatelessWidget {
  final String time;

  const _TimeView({
    Key? key,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.scheduleTheme.lessonTheme;
    return Wrap(
      direction: Axis.horizontal,
      children: [
        const _TimeIcon(),
        Indent.horizontal(5.0 * devScale),
        Text(
          time,
          style: theme.timeTextStyle,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}

@immutable
class _NameView extends StatelessWidget {
  final String name;
  final String type;

  const _NameView({
    Key? key,
    required this.name,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.scheduleTheme.lessonTheme;
    final fullName = name + (type.isNotEmpty ? ' ($type)' : '');

    return ExtendedText(
      fullName,
      textAlign: TextAlign.left,
      overflowWidget: TextOverflowWidget(
        align: TextOverflowAlign.left,
        child: Text(
          '...($type)',
          style: theme.nameTextStyle,
        ),
      ),
      maxLines: 2,
      style: theme.nameTextStyle,
    );
  }
}

@immutable
class _WhomView extends StatelessWidget {
  final WhomViewModel whom;

  const _WhomView({
    Key? key,
    required this.whom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.scheduleTheme.lessonTheme;

    if (whom.isEmpty) {
      return Text(
        'Преподаватель не указан',
        style: theme.undefinedTeacherStyle,
      );
    }

    return Text(
      whom.whom,
      style: theme.whomTextStyle,
    );
  }
}

@immutable
class _LessonDivider extends StatelessWidget {
  final Lesson lesson;

  const _LessonDivider({
    Key? key,
    required this.lesson,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final timer = LessonTimerScope.watch(context).getState(lesson);
    return timer.map(
      empty: (empty) => const _LessonDividerCommon(),
      next: (next) => const _LessonDividerCommon(),
      current: (current) => _LessonDividerCurrent(
        progress: current.progress,
      ),
    );
  }
}

@immutable
class _LessonDividerCommon extends StatelessWidget {
  const _LessonDividerCommon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.scheduleTheme.lessonTheme;
    return SizedBox(
      width: 1 * devScale,
      child: ColoredBox(
        color: theme.dividerColor,
      ),
    );
  }
}

@immutable
class _LessonDividerCurrent extends StatelessWidget {
  final double progress;

  const _LessonDividerCurrent({
    Key? key,
    required this.progress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.scheduleTheme.timerTheme;
    final topFlex = (progress * 100).round();
    final bottomFlex = 100 - topFlex;
    return SizedBox(
      width: 2 * devScale,
      child: Column(
        children: [
          Flexible(
            flex: topFlex,
            child: Container(
              color: theme.aboveSeparatorColor,
            ),
          ),
          Flexible(
            flex: bottomFlex,
            child: Container(
              color: theme.bottomSeparatorColor,
            ),
          ),
        ],
      ),
    );
  }
}

@immutable
class _LessonWrap extends StatelessWidget {
  final Widget child;
  final Lesson lesson;

  const _LessonWrap({
    Key? key,
    required this.child,
    required this.lesson,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final timer = LessonTimerScope.watch(context).getState(lesson);
    return timer.map(
      empty: (empty) => _LessonWrapCommon(
        child: child,
      ),
      next: (next) => _LessonWrapTimerNext(
        time: next.time,
        child: child,
      ),
      current: (current) => _LessonWrapTimerCurrent(
        time: current.time,
        child: child,
      ),
    );
  }
}

@immutable
class _LessonWrapCommon extends StatelessWidget {
  final Widget child;

  const _LessonWrapCommon({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.scheduleTheme.lessonTheme;
    return StandardRoundedWrap(
      color: theme.backgroundColor,
      clipped: false,
      child: child,
    );
  }
}

@immutable
class _LessonWrapTimerCurrent extends StatelessWidget {
  final Widget child;
  final Duration time;

  const _LessonWrapTimerCurrent({
    Key? key,
    required this.child,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scheduleTheme = context.theme.scheduleTheme;
    final lessonTheme = scheduleTheme.lessonTheme;
    final timerTheme = scheduleTheme.timerTheme;
    return StandardRoundedWrap(
      clipped: false,
      color: timerTheme.currentColor,
      child: Padding(
        padding: EdgeInsets.all(2 * devScale),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                color: lessonTheme.backgroundColor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(8.0 * devScale),
                ),
              ),
              child: child,
            ),
            Indent.vertical(3 * devScale),
            Text(
              'осталось ${time.toNamesHM()}',
              style: timerTheme.currentTextStyle,
              textAlign: TextAlign.center,
            ),
            Indent.vertical(1 * devScale),
          ],
        ),
      ),
    );
  }
}

@immutable
class _LessonWrapTimerNext extends StatelessWidget {
  final Widget child;
  final Duration time;

  const _LessonWrapTimerNext({
    Key? key,
    required this.child,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scheduleTheme = context.theme.scheduleTheme;
    final lessonTheme = scheduleTheme.lessonTheme;
    final timerTheme = scheduleTheme.timerTheme;
    return StandardRoundedWrap(
      clipped: false,
      color: timerTheme.currentColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Indent.vertical(3 * devScale),
          Text(
            'через ${time.toNamesHM()}',
            style: timerTheme.currentTextStyle,
            textAlign: TextAlign.center,
          ),
          Indent.vertical(3 * devScale),
          DecoratedBox(
            decoration: BoxDecoration(
              color: lessonTheme.backgroundColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(8.0 * devScale),
              ),
            ),
            child: child,
          ),
        ],
      ),
    );
  }
}
