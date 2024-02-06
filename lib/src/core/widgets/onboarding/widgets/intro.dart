import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:bbmstu_app/src/core/widgets/indent.dart';
import 'package:bbmstu_app/src/core/widgets/standard_asset_image.dart';
import 'package:bbmstu_app/src/features/news/presentation/pages/news_full_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

@immutable
class Intro extends StatelessWidget {
  final String title;
  final StandardAssetImage? assetImage;
  final String description;
  final bool useMarkdown;

  const Intro({
    Key? key,
    required this.title,
    this.assetImage,
    required this.description,
    this.useMarkdown = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.firstOpenTheme.introTheme;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20 * devScale,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              title,
              style: theme.textStyle1,
            ),
            Indent.vertical(20 * devScale),
            if (assetImage != null) assetImage!,
            if (assetImage != null) Indent.vertical(20 * devScale),
            useMarkdown
                ? StandardMarkdown(
                    markdown: description,
                  )
                : Text(
                    description,
                    textAlign: TextAlign.center,
                    style: theme.textStyle2,
                  ),
          ],
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(
      properties
        ..add(
          StringProperty(
            'description',
            'Intro StatelessWidget',
          ),
        ),
    );
  }
}
