import 'package:flutter/material.dart';

abstract class Indent implements StatelessWidget {
  const factory Indent.vertical(double height) = VerticalIndent;

  const factory Indent.horizontal(double width) = HorizontalIndent;
}

class VerticalIndent extends StatelessWidget implements Indent {
  final double height;

  const VerticalIndent(this.height, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1,
      height: height,
    );
  }
}

class HorizontalIndent extends StatelessWidget implements Indent {
  final double width;

  const HorizontalIndent(this.width, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 1,
    );
  }
}
