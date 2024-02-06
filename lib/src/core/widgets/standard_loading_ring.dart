import 'package:bbmstu_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class StandardLoadingRing extends StatelessWidget {
  const StandardLoadingRing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitRing(
        color: Colors.grey,
        size: 35 * devScale,
        lineWidth: 4 * devScale,
      ),
    );
  }
}
