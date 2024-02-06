import 'dart:math' as math;

import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/i_theme/i_schedule_theme.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:bbmstu_app/src/features/schedule/presentation/bloc/lesson_page_view_notifier.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/schedule/lesson_view.dart';
import 'package:flutter/material.dart';

typedef _State = LessonMetrics;
typedef _StateScope = ValueScope<_State>;

@immutable
class LessonMetricsScope extends StatefulWidget {
  final Widget child;
  final ScheduleDayViewModel lessons;

  const LessonMetricsScope({
    Key? key,
    required this.child,
    required this.lessons,
  }) : super(key: key);

  static _State watch(BuildContext context) => ValueScope.watch<_State>(context);

  @override
  State<LessonMetricsScope> createState() => _LessonMetricsScopeState();
}

class _LessonMetricsScopeState extends State<LessonMetricsScope> {
  late final metrics = _LessonMetricsBuilder(
    lessons: widget.lessons,
    context: context,
  ).createMetrics();

  @override
  Widget build(BuildContext context) {
    return _StateScope(
      value: metrics,
      child: widget.child,
    );
  }
}

/// calculate left part width for lessons in list
class LessonMetrics {
  final double leftPartWidth;
  final double timeHeight;
  final double cabinetTextWidth;
  final double cabinetHeight;
  final double iconSize;
  final double iconRightIndent;

  LessonMetrics({
    required this.leftPartWidth,
    required this.timeHeight,
    required this.cabinetTextWidth,
    required this.cabinetHeight,
    required this.iconSize,
    required this.iconRightIndent,
  });
}

class _LessonMetricsBuilder {
  static Size? _timeTextSize;
  final ScheduleDayViewModel lessons;
  final BuildContext context;
  late final ILessonTheme theme;
  late final double textScaleFactor;

  _LessonMetricsBuilder({
    required this.lessons,
    required this.context,
  }) {
    theme = context.theme.scheduleTheme.lessonTheme;
    textScaleFactor = MediaQuery
        .of(context)
        .textScaleFactor;
  }

  LessonMetrics createMetrics() {
    _timeTextSize ??= calculateTimeTextSize();
    final timeTextSize = _timeTextSize!;
    final cabinetTextSize = calculateCabinetTextSize();
    final textWidth = math.max(timeTextSize.width, cabinetTextSize.width);
    final cabinetTextHeight = math.max(cabinetTextSize.height, iconSize);
    final _iconRightIndent = 5 * devScale;
    return LessonMetrics(
      leftPartWidth: iconSize + _iconRightIndent + textWidth,
      timeHeight: timeTextSize.height,
      cabinetTextWidth: textWidth,
      cabinetHeight: cabinetTextHeight,
      iconSize: iconSize,
      iconRightIndent: _iconRightIndent,
    );
  }

  Size calculateTimeTextSize() {
    return calculateTextSize(
      text: '00:00\n00:00',
      style: theme.timeTextStyle,
      maxLines: 2,
    );
  }

  Size calculateCabinetTextSize() {
    final cabinets = getLongestCabinets();

    if (cabinets.isNotEmpty && cabinets.first.isEmpty) {
      return CabinetPlaceholder.size;
    }

    double width = 0;
    double height = 0;

    for (var cabinet in cabinets) {
      final size = calculateTextSize(
        text: cabinet,
        style: theme.cabinetTextStyle,
        maxLines: 1,
      );

      if (width < size.width) {
        width = size.width;
      }

      if (height < size.height) {
        height = size.height;
      }
    }

    return Size(width, height);
  }

  Iterable<String> getLongestCabinets() {
    if (lessons.isEmpty) {
      return const [];
    }

    final texts = lessons.map((e) => e.cabinet);
    final maxLength = texts.map((e) => e.length).reduce(math.max);
    final longestCabinets = texts.where((element) => element.length == maxLength).toSet();

    return longestCabinets;
  }

  Size calculateTextSize({
    required String text,
    required TextStyle style,
    required int maxLines,
  }) {
    final textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: theme.cabinetTextStyle,
      ),
      maxLines: maxLines,
      textScaleFactor: textScaleFactor,
      textDirection: TextDirection.ltr,
    )
      ..layout();

    return textPainter.size;
  }
}
