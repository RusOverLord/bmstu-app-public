import 'package:bbmstu_app/src/features/news/domain/entities/news_preview.dart';
import 'package:bbmstu_app/src/features/news/presentation/bloc/news_full_notifier.dart';
import 'package:bbmstu_app/src/features/news/presentation/pages/news_full_view.dart';
import 'package:bbmstu_app/src/features/news/presentation/widgets/custom_image_network.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// must be overridden in news list view (in NewsPageView)
final newsPreviewProvider = ScopedProvider<NewsPreview>(
  (ref) => throw UnimplementedError(),
);

class NewsPreviewView extends StatelessWidget {
  const NewsPreviewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final globalTheme = context.theme;
    final theme = globalTheme.newsTheme.previewTheme;
    final isLight = globalTheme.isLight;

    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10.0 * devScale,
        horizontal: 20.0 * devScale,
      ),
      decoration: BoxDecoration(
        boxShadow: isLight
            ? [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5 * devScale,
                  blurRadius: 7 * devScale,
                  offset: Offset(0, 10 * devScale),
                ),
              ]
            : null,
      ),
      child: HookBuilder(
        builder: (context) {
          final newsPreview = useProvider(newsPreviewProvider);
          return GestureDetector(
            onTap: () => showNewsFullView(context, newsPreview),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6.0 * devScale),
              child: ColoredBox(
                color: theme.backgroundColor,
                child: Column(
                  children: <Widget>[
                    if (newsPreview.previewImageUrl.isNotEmpty)
                      CustomImageNetwork(
                        imageUrl: newsPreview.previewImageUrl,
                      ),
                    const _PreviewBody(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> showNewsFullView(
      BuildContext context, NewsPreview newsPreview) async {
    Navigator.push<void>(
      context,
      MaterialPageRoute(
        settings: const RouteSettings(name: 'NewsFullScreen'),
        builder: (context) => ProviderScope(
          overrides: [
            newsContextProvider.overrideWithValue(
              NewsFullContext(newsPreview.uuid),
            ),
          ],
          child: const NewsFullView(),
        ),
      ),
    );
  }
}

class _PreviewBody extends HookWidget {
  const _PreviewBody();

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.newsTheme.previewTheme;
    final newsPreview = useProvider(newsPreviewProvider);

    return Container(
      padding: EdgeInsets.all(14.0 * devScale),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            newsPreview.title,
            style: theme.textStyle1,
          ),
          Text(
            newsPreview.created,
            style: theme.textStyle2,
          ),
          SizedBox(
            height: 10.0 * devScale,
          ),
          Text(
            newsPreview.previewDescription,
            style: theme.textStyle3,
          ),
          SizedBox(
            height: 15.0 * devScale,
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(7.0 * devScale)),
            child: Container(
              width: double.infinity,
              color: theme.buttonColor,
              padding: EdgeInsets.symmetric(vertical: 7.0 * devScale),
              alignment: Alignment.center,
              child: Text(
                'Подробнее',
                style: theme.textStyle4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
