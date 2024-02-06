import 'package:bbmstu_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingRing extends StatelessWidget {
  const LoadingRing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpinKitRing(
      color: Colors.grey,
      size: 35 * devScale,
      lineWidth: 4 * devScale,
    );
  }
}
