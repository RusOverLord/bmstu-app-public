import 'package:bbmstu_app/src/core/widgets/indent.dart';
import 'package:bbmstu_app/src/core/widgets/intro_view.dart';
import 'package:bbmstu_app/main.dart';
import 'package:flutter/material.dart';

class FirstOpenIntroWrapper extends StatelessWidget {
  final IntroView child;

  const FirstOpenIntroWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Indent.vertical(100 * devScale),
        child,
      ],
    );
  }
}
