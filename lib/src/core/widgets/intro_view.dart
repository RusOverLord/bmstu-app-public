import 'package:bbmstu_app/src/core/widgets/standard_asset_image.dart';
import 'package:bbmstu_app/src/core/widgets/indent.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';

class IntroView extends StatelessWidget {
  final String? title;
  final StandardAssetImage assetImage;
  final String? description;
  final bool firstOpen;

  const IntroView({
    Key? key,
    this.title,
    required this.assetImage,
    this.description,
    this.firstOpen = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.firstOpenTheme.introTheme;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 42 * devScale,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (title != null)
            Text(
              title!,
              style: theme.textStyle1,
            ),
          if (title != null) Indent.vertical(26 * devScale),
          assetImage,
          if (description != null) Indent.vertical(15 * devScale),
          if (description != null)
            Text(
              description!,
              textAlign: TextAlign.center,
              style: theme.textStyle2,
            ),
        ],
      ),
    );
  }
}
