import 'dart:async';
import 'dart:collection';
import 'package:flutter/material.dart';

abstract class IPageControllerListener {
  void onLongJumpStart(JumpParams jumpParams);

  void onLongJumpEnd(JumpParams jumpParams);
}

abstract class IValueNotifier<T> {
  T get value;

  set value(T value);
}

mixin PageControllerListenerBase<T> on IValueNotifier<PageViewState<T>> implements IPageControllerListener {
  @override
  void onLongJumpStart(JumpParams jumpParams) {
    value = PageViewStateTransformer(value, jumpParams);
  }

  @override
  void onLongJumpEnd(JumpParams jumpParams) {
    value = (value as PageViewStateTransformer<T>).state;
  }
}

abstract class PageViewState<T> {
  T operator [](int index);
}

class PageViewStateCache<T> implements PageViewState<T> {
  final Map<int, T> cache;
  final PageViewItemFactory<T> factory;

  const PageViewStateCache(this.factory, this.cache);

  PageViewStateCache.empty(this.factory) : cache = HashMap<int, T>();

  @override
  T operator [](int index) {
    return cache[index] ??= factory.createModel(index);
  }
}

class PageViewStateTransformer<T> implements PageViewState<T> {
  final PageViewState<T> state;
  final JumpParams params;

  PageViewStateTransformer(this.state, this.params);

  @override
  T operator [](int index) {
    final transformedIndex = transform(index);
    return state[transformedIndex];
  }

  int transform(int index) {
    if (index == params.replacement) {
      return params.jumpFrom;
    }

    return index;
  }
}

abstract class PageViewItemFactory<T> {
  T createModel(int index);
}

const _duration = Duration(milliseconds: 300);
const _curve = Curves.easeIn;

class PageViewJumpController {
  final PageController pageController;
  final IPageControllerListener pageViewNotifier;
  final Duration duration;
  final Curve curve;

  PageViewJumpController({
    required this.pageController,
    required this.pageViewNotifier,
    this.duration = _duration,
    this.curve = _curve,
  });

  int get initialPage => pageController.initialPage;

  Future<void> previousPage() {
    return pageController.previousPage(duration: duration, curve: curve);
  }

  Future<void> nextPage() {
    return pageController.nextPage(duration: duration, curve: curve);
  }

  Future<void> animateToPage(int moveTo) {
    final currentPage = pageController.page!;

    if (moveTo == currentPage) {
      return Future<void>.value(null);
    }

    late double durationScale;

    if (moveTo > currentPage) {
      durationScale = moveTo - currentPage;
    } else {
      durationScale = currentPage - moveTo;
    }

    if (durationScale < 1) {
      return _animateToPage(moveTo, durationScale);
    } else {
      return _longJump(moveTo);
    }
  }

  Future<void> _longJump(int moveTo) {
    final currentPage = pageController.page!;
    final jumpFrom = currentPage.round();
    final JumpParams jumpParams;

    if (moveTo > currentPage) {
      jumpParams = JumpParams(jumpFrom, moveTo - 1);
    } else {
      jumpParams = JumpParams(jumpFrom, moveTo + 1);
    }

    pageViewNotifier.onLongJumpStart(jumpParams);
    pageController.jumpToPage(jumpParams.replacement);

    return _animateToPage(moveTo, 1).then((value) => pageViewNotifier.onLongJumpEnd(jumpParams));
  }

  Future<void> _animateToPage(int moveTo, double durationScale) {
    return pageController.animateToPage(
      moveTo,
      duration: duration * durationScale,
      curve: curve,
    );
  }
}

class JumpParams {
  final int jumpFrom;
  final int replacement;

  const JumpParams(this.jumpFrom, this.replacement);
}
