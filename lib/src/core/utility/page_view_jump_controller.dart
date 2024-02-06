// import 'package:flutter/material.dart';
//
// class JumpParams {
//   final int jumpFrom;
//   final int replacement;
//
//   const JumpParams(this.jumpFrom, this.replacement);
// }
//
// const _duration = Duration(milliseconds: 300);
// const _curve = Curves.easeIn;
//
// class PageViewJumpController {
//   final PageController pageController;
//   final IPageControllerListener pageViewNotifier;
//   final Duration duration;
//   final Curve curve;
//
//   PageViewJumpController({
//     required this.pageController,
//     required this.pageViewNotifier,
//     this.duration = _duration,
//     this.curve = _curve,
//   });
//
//   int get initialPage => pageController.initialPage;
//
//   Future<void> previousPage() {
//     return pageController.previousPage(duration: duration, curve: curve);
//   }
//
//   Future<void> nextPage() {
//     return pageController.nextPage(duration: duration, curve: curve);
//   }
//
//   Future<void> animateToPage(int moveTo) {
//     final currentPage = pageController.page!;
//
//     if (moveTo == currentPage) {
//       return Future<void>.value(null);
//     }
//
//     late double durationScale;
//
//     if (moveTo > currentPage) {
//       durationScale = moveTo - currentPage;
//     } else {
//       durationScale = currentPage - moveTo;
//     }
//
//     if (durationScale < 1) {
//       return _animateToPage(moveTo, durationScale);
//     } else {
//       return _longJump(moveTo);
//     }
//   }
//
//   Future<void> _longJump(int moveTo) {
//     final currentPage = pageController.page!;
//     final jumpFrom = currentPage.round();
//     final JumpParams jumpParams;
//
//     if (moveTo > currentPage) {
//       jumpParams = JumpParams(jumpFrom, moveTo - 1);
//     } else {
//       jumpParams = JumpParams(jumpFrom, moveTo + 1);
//     }
//
//     pageViewNotifier.onLongJumpStart(jumpParams);
//     pageController.jumpToPage(jumpParams.replacement);
//
//     return _animateToPage(moveTo, 1)
//         .then((value) => pageViewNotifier.onLongJumpEnd(jumpParams));
//   }
//
//   Future<void> _animateToPage(int moveTo, double durationScale) {
//     return pageController.animateToPage(
//       moveTo,
//       duration: duration * durationScale,
//       curve: curve,
//     );
//   }
// }
