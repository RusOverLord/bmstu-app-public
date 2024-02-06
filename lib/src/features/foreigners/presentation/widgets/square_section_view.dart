import 'package:bbmstu_app/src/core/widgets/standard_asset_image.dart';
import 'package:bbmstu_app/src/core/widgets/standard_button.dart';
import 'package:bbmstu_app/src/core/widgets/standard_rounded_wrap.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';

class SquareSectionView extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry imagePadding;
  final ImageAsset imageAsset;
  final VoidCallback onTap;

  const SquareSectionView({
    Key? key,
    required this.text,
    required this.imagePadding,
    required this.imageAsset,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.foreignersTheme.mainScreenTheme;
    return Flexible(
      child: AspectRatio(
        aspectRatio: 1.0,
        child: StandardRoundedWrap(
          child: StandardButton(
            onTap: onTap,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 10 * devScale,
                    right: 6 * devScale,
                    left: 6 * devScale,
                  ),
                  child: Text(
                    text,
                    style: theme.standardParagraphTextStyle,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: imagePadding,
                    child: StandardAssetImage(
                      fit: BoxFit.contain,
                      alignment: Alignment.bottomCenter,
                      imageAsset: imageAsset,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
