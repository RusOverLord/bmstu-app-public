import 'package:bbmstu_app/src/core/widgets/standard_asset_image.dart';
import 'package:bbmstu_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class GearLoadingRing extends HookWidget {
  const GearLoadingRing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 2500),
    )..repeat();

    return RotationTransition(
      turns: Tween(begin: 0.0, end: 1.0).animate(animationController),
      child: SizedBox(
        width: 50 * devScale,
        height: 50 * devScale,
        child: const StandardAssetImage(
          imageAsset: ImageAsset.gear,
        ),
      ),
    );
  }
}
