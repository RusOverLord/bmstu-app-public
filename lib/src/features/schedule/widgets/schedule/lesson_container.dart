import 'dart:math' as math;

import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/schedule/lesson_metrics_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

final double _horizontalInsidePadding = 8 * devScale;
final double _verticalInsidePadding = 8 * devScale;

enum LessonContainerType {
  common,
  inList,
}

class LessonContainerParametersInList {
  final Widget time;
  final Widget cabinetIcon;
  final Widget cabinet;
  final Widget name;
  final Widget whom;
  final Widget divider;

  const LessonContainerParametersInList({
    required this.time,
    required this.cabinetIcon,
    required this.cabinet,
    required this.name,
    required this.whom,
    required this.divider,
  });
}

class LessonContainerParametersCommon {
  final Widget time;
  final Widget cabinet;
  final Widget name;
  final Widget whom;
  final Widget divider;

  const LessonContainerParametersCommon({
    required this.time,
    required this.cabinet,
    required this.name,
    required this.whom,
    required this.divider,
  });
}

abstract class LessonContainer {
  static Widget inList({
    required LessonContainerParametersInList params,
  }) {
    return Padding(
      padding: EdgeInsets.all(8 * devScale),
      child: Builder(
          builder: (context) => _LessonContainerInList(
                params: params,
                metrics: LessonMetricsScope.watch(context),
              )),
    );
  }

  static Widget common({
    required LessonContainerParametersCommon params,
  }) {
    return _LessonContainerCommon(
      params: params,
    );
  }
}

typedef MetricsBuilder = Widget Function(LessonMetrics metrics);

class _LessonContainerInList extends MultiChildRenderObjectWidget {
  final LessonMetrics metrics;

  _LessonContainerInList({
    Key? key,
    required LessonContainerParametersInList params,
    required this.metrics,
  }) : super(
          key: key,
          children: [
            params.time,
            params.cabinet,
            params.name,
            params.whom,
            params.divider,
            params.cabinetIcon,
          ],
        );

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _RenderLessonContainerInList(
      metrics: metrics,
    );
  }
}

class _LessonContainerCommon extends MultiChildRenderObjectWidget {
  _LessonContainerCommon({
    Key? key,
    required LessonContainerParametersCommon params,
  }) : super(
          key: key,
          children: [
            params.time,
            params.cabinet,
            params.name,
            params.whom,
            params.divider,
          ],
        );

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _RenderLessonContainerCommon();
  }
}

abstract class _RenderLessonContainerBase extends RenderBox
    with
        ContainerRenderObjectMixin<RenderBox, _LessonContainerParentData>,
        RenderBoxContainerDefaultsMixin<RenderBox, _LessonContainerParentData> {
  late RenderBox time;
  late RenderBox cabinet;
  late RenderBox name;
  late RenderBox whom;
  late RenderBox divider;
  late _LessonContainerParentData timeData;
  late _LessonContainerParentData cabinetData;
  late _LessonContainerParentData nameData;
  late _LessonContainerParentData whomData;
  late _LessonContainerParentData dividerData;

  @override
  @mustCallSuper
  void performLayout() {
    time = firstChild!;
    timeData = time.parentData! as _LessonContainerParentData;

    cabinet = timeData.nextSibling!;
    cabinetData = cabinet.parentData! as _LessonContainerParentData;

    name = cabinetData.nextSibling!;
    nameData = name.parentData! as _LessonContainerParentData;

    whom = nameData.nextSibling!;
    whomData = whom.parentData! as _LessonContainerParentData;

    divider = whomData.nextSibling!;
    dividerData = divider.parentData! as _LessonContainerParentData;
  }

  @override
  void setupParentData(RenderBox child) {
    if (child.parentData is! _LessonContainerParentData) {
      child.parentData = _LessonContainerParentData();
    }
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    defaultPaint(context, offset);
  }

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) {
    return defaultHitTestChildren(result, position: position);
  }
}

class _RenderLessonContainerInList extends _RenderLessonContainerBase {
  late RenderBox cabinetIcon;
  late _LessonContainerParentData cabinetIconData;
  final LessonMetrics metrics;

  _RenderLessonContainerInList({
    required this.metrics,
  });

  @override
  void performLayout() {
    super.performLayout();
    cabinetIcon = dividerData.nextSibling!;
    cabinetIconData = cabinetIcon.parentData! as _LessonContainerParentData;
    final size = constraints.biggest;

    final leftPartWidth = metrics.leftPartWidth;

    time.layout(
      BoxConstraints.tightFor(
        width: leftPartWidth,
        height: metrics.timeHeight,
      ),
      parentUsesSize: true,
    );
    cabinet.layout(
      BoxConstraints.tightFor(
        width: metrics.cabinetTextWidth,
        height: metrics.cabinetHeight,
      ),
      parentUsesSize: true,
    );
    cabinetIcon.layout(
      BoxConstraints.tightFor(
        width: metrics.iconSize,
        height: metrics.iconSize,
      ),
      parentUsesSize: true,
    );

    final cabinetFullHeight = metrics.cabinetHeight;

    final dividerWidth = divider.getMinIntrinsicWidth(size.height);

    final dividerX = leftPartWidth + _horizontalInsidePadding;
    final rightPartX = dividerX + _horizontalInsidePadding;
    final rightPartSize = Size(size.width - rightPartX, size.height);

    name.layout(BoxConstraints.loose(rightPartSize), parentUsesSize: true);
    nameData.offset = Offset(rightPartX, 0);

    final topPartHeight = math.max(metrics.timeHeight, name.size.height);
    final bottomPartOffset = topPartHeight + _verticalInsidePadding;
    final whomSize = Size(rightPartSize.width, size.height - bottomPartOffset);

    whom.layout(BoxConstraints.loose(whomSize), parentUsesSize: true);
    whomData.offset = Offset(rightPartX, bottomPartOffset);

    final bottomPartHeight = math.max(cabinetFullHeight, whom.size.height);
    final height = bottomPartOffset + bottomPartHeight;

    final dividerSize = Size(dividerWidth, height);
    divider.layout(BoxConstraints.tight(dividerSize), parentUsesSize: false);
    dividerData.offset = Offset(dividerX, 0);

    final cabinetY = height - cabinetFullHeight;
    cabinetIconData.offset = Offset(0, cabinetY);
    cabinetData.offset = Offset(metrics.iconSize + metrics.iconRightIndent, cabinetY);

    this.size = Size(size.width, height);
  }
}

class _RenderLessonContainerCommon extends _RenderLessonContainerBase {
  @override
  void setupParentData(RenderBox child) {
    if (child.parentData is! _LessonContainerParentData) {
      child.parentData = _LessonContainerParentData();
    }
  }

  @override
  void performLayout() {
    super.performLayout();
    final size = constraints.biggest;

    time.layout(BoxConstraints.loose(size), parentUsesSize: true);
    cabinet.layout(BoxConstraints.loose(size), parentUsesSize: true);

    final dividerWidth = divider.getMinIntrinsicWidth(size.height);

    final leftPartWidth = math.max(time.size.width, cabinet.size.width);
    final dividerHorizontalOffset = leftPartWidth + _horizontalInsidePadding;
    final rightPartOffset = dividerHorizontalOffset + _horizontalInsidePadding;
    final rightPartSize = Size(size.width - rightPartOffset, size.height);

    name.layout(BoxConstraints.loose(rightPartSize), parentUsesSize: true);
    nameData.offset = Offset(rightPartOffset, 0);

    final topPartHeight = math.max(time.size.height, name.size.height);
    final bottomPartOffset = topPartHeight + _verticalInsidePadding;
    final whomSize = Size(rightPartSize.width, size.height - bottomPartOffset);

    whom.layout(BoxConstraints.loose(whomSize), parentUsesSize: true);
    whomData.offset = Offset(rightPartOffset, bottomPartOffset);

    final bottomPartHeight = math.max(cabinet.size.height, whom.size.height);
    final height = bottomPartOffset + bottomPartHeight;

    final dividerSize = Size(dividerWidth, height);
    divider.layout(BoxConstraints.tight(dividerSize), parentUsesSize: false);
    dividerData.offset = Offset(dividerHorizontalOffset, 0);

    final cabinetOffset = height - cabinet.size.height;
    cabinetData.offset = Offset(0, cabinetOffset);

    this.size = Size(size.width, height);
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    defaultPaint(context, offset);
  }

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) {
    return defaultHitTestChildren(result, position: position);
  }
}

class _LessonContainerParentData extends ContainerBoxParentData<RenderBox> {}
