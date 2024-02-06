import 'package:bbmstu_app/src/core/widgets/standard_rounded_wrap.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MigrationStatusView extends StatelessWidget {
  const MigrationStatusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardRoundedWrap(
      child: _AnimatedBackgroundContainer(
        front: const _Labels(),
        background: const ColoredBox(
          color: Color.fromRGBO(23, 109, 234, 1),
          child: _AnimatedBackground(),
        ),
      ),
    );
  }
}

class _Labels extends StatelessWidget {
  const _Labels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.foreignersTheme.mainScreenTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 22 * devScale,
            bottom: 26 * devScale,
            left: 21 * devScale,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Миграционный',
                style: theme.migrationTextStyle,
              ),
              Text(
                'статус',
                style: theme.statusTextStyle,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 17 * devScale,
            bottom: 10 * devScale,
            right: 27 * devScale,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'осталось',
                style: theme.inscriptionTextStyle,
              ),
              Text(
                '55',
                style: theme.dayNumberTextStyle,
              ),
              Text(
                'дней',
                style: theme.inscriptionTextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

const _duration = Duration(seconds: 15);

const _gradient = LinearGradient(
  begin: Alignment(-0.5, -1.0),
  end: Alignment(0.5, 1.0),
  colors: [
    Color.fromRGBO(23, 109, 234, 1),
    Color.fromRGBO(128, 179, 255, 1),
    Color.fromRGBO(23, 109, 234, 1),
  ],
  stops: [
    0.0,
    0.5,
    1.0,
  ],
);

final _tween = Tween<Offset>(
  begin: const Offset(-1, 0.0),
  end: const Offset(1, 0.0),
);

class _AnimatedBackground extends HookWidget {
  const _AnimatedBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(duration: _duration);
    final offsetAnimation = _tween.animate(controller);
    controller.repeat();
    return SlideTransition(
      position: offsetAnimation,
      child: const DecoratedBox(
        decoration: BoxDecoration(
          gradient: _gradient,
        ),
        child: SizedBox.expand(),
      ),
    );
  }
}

class _ParentData extends ContainerBoxParentData<RenderBox> {}

class _AnimatedBackgroundContainer extends MultiChildRenderObjectWidget {
  _AnimatedBackgroundContainer({
    Key? key,
    required Widget front,
    required Widget background,
  }) : super(
          key: key,
          children: [
            background,
            front,
          ],
        );

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _RenderAnimatedBackgroundContainer();
  }
}

class _RenderAnimatedBackgroundContainer extends RenderBox
    with
        ContainerRenderObjectMixin<RenderBox,
            ContainerBoxParentData<RenderBox>>,
        RenderBoxContainerDefaultsMixin<RenderBox,
            ContainerBoxParentData<RenderBox>> {
  @override
  void setupParentData(RenderBox child) {
    if (child.parentData is! _ParentData) child.parentData = _ParentData();
  }

  @override
  void performLayout() {
    final size = constraints.biggest;
    final background = firstChild!;
    final front = (background.parentData! as _ParentData).nextSibling!;
    front.layout(BoxConstraints.loose(size), parentUsesSize: true);
    this.size = front.size;
    background.layout(BoxConstraints.tightFor(
        width: this.size.width * 2, height: this.size.height));
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
