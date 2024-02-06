import 'dart:math';

import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';

import 'onboarding_fade.dart';

@immutable
class OnboardingBottomBar extends StatelessWidget {
  final bool fadeLast;
  final Widget? rightAction;
  final VoidCallback? onSkip;

  const OnboardingBottomBar({
    Key? key,
    this.fadeLast = false,
    this.rightAction,
    this.onSkip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: fadeLast
              ? const OnboardingFade(
                  fadeType: FadeAnimationType.lastIn,
                  child: _BottomCircleBar(),
                )
              : const _BottomCircleBar(),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: SkipButton(
            onTap: onSkip,
          ),
        ),
        if (rightAction != null)
          Align(
            alignment: Alignment.bottomRight,
            child: rightAction!,
          ),
      ],
    );
  }
}

@immutable
class SkipButton extends StatelessWidget {
  final VoidCallback? onTap;

  const SkipButton({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.firstOpenTheme;
    return OnboardingBottomBarAction(
      onTap: onTap ?? DefaultTabController.of(context)?.animateToEnd,
      child: OnboardingFade(
        fadeType: FadeAnimationType.firstIn,
        child: Text(
          'Пропустить',
          style: theme.skipTextStyle,
        ),
      ),
    );
  }
}

extension on TabController {
  void animateToEnd({Duration? duration, Curve curve = Curves.ease}) =>
      animateTo(length - 1, duration: duration, curve: curve);
}

@immutable
class OnboardingBottomBarAction extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;

  const OnboardingBottomBarAction({
    Key? key,
    required this.child,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(20 * devScale),
        child: child,
      ),
    );
  }
}

@immutable
class _BottomCircleBar extends StatelessWidget {
  const _BottomCircleBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.firstOpenTheme;
    final tabController = DefaultTabController.of(context);

    if (tabController == null || tabController.length < 2) {
      return const SizedBox.shrink();
    }

    final animation = tabController.animation!;
    final circlesNumber = tabController.length;

    return SizedBox(
      height: 55 * devScale,
      width: circlesNumber * 40 * devScale,
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, snapshot) {
          return CustomPaint(
            painter: _CirclesPainter(
              circlesNumber: circlesNumber,
              radius: 7 * devScale,
              value: animation.value,
              color: theme.animatedCirclesColor,
            ),
          );
        },
      ),
    );
  }
}

class _CirclesPainter extends CustomPainter {
  final int circlesNumber;
  final double value;
  final double radius;
  final Color color;

  _CirclesPainter({
    required this.circlesNumber,
    required this.radius,
    required this.value,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paintList = List.generate(
      circlesNumber,
      (index) => Paint()
        ..color = color.withOpacity(color.opacity * countOpacity(index))
        ..strokeWidth = 1
        ..style = PaintingStyle.fill,
    );

    final radiusList = List.generate(
      circlesNumber,
      countRadius,
    );

    final spaceBetween = countSpaceBetween(radiusList, size);
    var previousPosition = 0.0;

    final positionList = List.generate(
      circlesNumber,
      (index) {
        if (index == 0) {
          previousPosition = countPosition(index, previousPosition, 0, 0, radiusList[index]);
        } else {
          previousPosition =
              countPosition(index, previousPosition, radiusList[index - 1], spaceBetween, radiusList[index]);
        }
        return previousPosition;
      },
    );

    final translation = countTranslation(positionList);

    for (var i = 0; i < circlesNumber; i++) {
      canvas.drawCircle(
          Offset(positionList[i] - translation + size.width / 2, size.height / 2), radiusList[i], paintList[i]);
    }
  }

  double countOpacity(int index) {
    var opacity = 1 - 0.1 * pow(2, (value - index).abs() + 1);
    opacity = (opacity > 0) ? opacity : 0;
    return opacity;
  }

  double countRadius(int index) {
    if ((value - index).abs() <= 1) {
      return radius * (1 + (1 - (value - index).abs()) / 2);
    } else {
      return radius;
    }
  }

  double countPosition(
      int index, double previousPosition, double previousRadius, double spaceBetween, double thisRadius) {
    return previousPosition + previousRadius + spaceBetween + thisRadius;
  }

  double countSpaceBetween(List<double> radiusList, Size size) {
    var spaceBetween = size.width;
    // radiusList.forEach((element) => spaceBetween - element * 2);
    for (var radius in radiusList) {
      spaceBetween -= radius * 2;
    }
    spaceBetween /= circlesNumber - 1;
    return spaceBetween;
  }

  double countTranslation(List<double> positionList) {
    final nextIndex = value.ceil();
    double translation;
    if (nextIndex == value) {
      translation = positionList[nextIndex];
    } else {
      translation = positionList[nextIndex - 1] +
          (positionList[nextIndex] - positionList[nextIndex - 1]) * (value - value.floor());
    }
    return translation;
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
