import 'package:bbmstu_app/src/core/widgets/intro_view.dart';
import 'package:bbmstu_app/src/core/widgets/standard_asset_image.dart';
import 'package:flutter/material.dart';

class TeaserView extends StatelessWidget {
  final String description;

  const TeaserView({
    Key? key,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroView(
      assetImage: const StandardAssetImage(
        themed: true,
        imageAsset: ImageAsset.services_1,
      ),
      description: description,
    );
  }
}
