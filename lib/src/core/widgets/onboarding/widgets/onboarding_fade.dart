import 'package:flutter/material.dart';

@immutable
class OnboardingFade extends StatelessWidget {
  final Widget child;
  final FadeAnimationType fadeType;

  const OnboardingFade({
    Key? key,
    required this.child,
    required this.fadeType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabController = DefaultTabController.of(context);

    if (tabController == null || tabController.length < 2) {
      return child;
    }

    final proxy = TabControllerProxyAnimation(tabController);

    return FadeTransition(
      opacity: FadeAnimation(proxy).switchType(fadeType),
      child: child,
    );
  }
}

enum FadeAnimationType {
  lastIn,
  lastOut,
  firstIn,
  firstOut,
}

class FadeAnimation {
  static final _inTween = Tween(begin: 1.0, end: 0.0);
  static final _outTween = Tween(begin: 0.0, end: 1.0);

  final TabControllerProxyAnimation proxy;

  const FadeAnimation(this.proxy);

  Animation<double> switchType(FadeAnimationType type) {
    switch(type) {
      case FadeAnimationType.lastIn:
        return FadeAnimation(proxy).lastIn();
      case FadeAnimationType.lastOut:
        return FadeAnimation(proxy).lastOut();
      case FadeAnimationType.firstIn:
        return FadeAnimation(proxy).firstIn();
      case FadeAnimationType.firstOut:
        return FadeAnimation(proxy).firstOut();
    }
  }

  Animation<double> lastIn() => _last(_inTween, 1);

  Animation<double> lastOut() => _last(_outTween, 0);

  Animation<double> firstIn() => _first(_inTween, 0);

  Animation<double> firstOut() => _first(_outTween, 1);

  Animation<double> _last(Tween<double> tween, double fill) {
    return TweenSequence<double>([
      TweenSequenceItem(
        weight: proxy.end,
        tween: ConstantTween(fill),
      ),
      TweenSequenceItem(
        weight: 1,
        tween: tween,
      ),
    ]).animate(proxy);
  }

  Animation<double> _first(Tween<double> tween, double fill) {
    return TweenSequence<double>([
      TweenSequenceItem(
        weight: 1,
        tween: tween,
      ),
      TweenSequenceItem(
        weight: proxy.end,
        tween: ConstantTween(fill),
      ),
    ]).animate(proxy);
  }
}

class TabControllerProxyAnimation extends Animation<double>  with AnimationWithParentMixin<double> {
  @override
  final Animation<double> parent;
  final double length;
  final double end;

  TabControllerProxyAnimation(TabController tabController) :
        parent = tabController.animation!,
        length = tabController.length.toDouble(),
        end = tabController.length - 1;

  @override
  double get value => parent.value / end;
}
