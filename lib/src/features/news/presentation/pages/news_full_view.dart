import 'package:bbmstu_app/src/core/features/error_label/presentation/widgets/error_label.dart';
import 'package:bbmstu_app/src/core/widgets/standard_refresh_indicator.dart';
import 'package:bbmstu_app/src/core/widgets/indent.dart';
import 'package:bbmstu_app/src/features/news/presentation/bloc/news_full_notifier.dart';
import 'package:bbmstu_app/src/features/news/presentation/bloc/news_full_state.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/features/news/domain/entities/news_full.dart';
import 'package:bbmstu_app/src/core/widgets/standard_app_bar.dart';
import 'package:bbmstu_app/src/core/widgets/standard_button.dart';
import 'package:bbmstu_app/src/features/news/presentation/widgets/custom_image_network.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:bbmstu_app/src/core/themes/i_theme/i_news_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

/// must be overridden in NewsPreviewView
final newsContextProvider = ScopedProvider<NewsFullContext>(
  (ref) => throw UnimplementedError(),
);

class NewsFullView extends StatelessWidget {
  const NewsFullView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: StandardAppBar.title(
          title: 'Новости',
        ),
        body: HookBuilder(
          builder: (context) {
            final newsContext = useProvider(newsContextProvider);
            final state = useProvider(newsFullNotifierProvider(newsContext));

            return state.join(
              (loading) => buildLoading(),
              (data) => buildData(data),
              (error) => buildError(error),
            );
          },
        ),
      ),
    );
  }

  Widget buildLoading() {
    return SpinKitRing(
      color: Colors.grey,
      size: 35 * devScale,
      lineWidth: 4 * devScale,
    );
  }

  Widget buildData(NewsFullStateData data) {
    return _NewsFullBody(
      newsFull: data.newsFull,
    );
  }

  Widget buildError(NewsFullStateError error) {
    return Column(
      children: const [
        Expanded(
          child: SizedBox(),
        ),
        ErrorLabel('нет сети'),
      ],
    );
  }
}

class _NewsFullBody extends HookWidget {
  final NewsFull newsFull;

  const _NewsFullBody({
    required this.newsFull,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.newsTheme.fullTheme;

    final newsContext = useProvider(newsContextProvider);
    final notifier = useProvider(newsFullNotifierProvider(newsContext).notifier);

    return StandardRefreshIndicator(
      onRefresh: notifier.refresh,
      child: ListView(
        ///TODO add refresh indicator
        children: <Widget>[
          CustomImageNetwork(
            imageUrl: newsFull.imageUrl,
          ),
          Indent.vertical(12.0 * devScale),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0 * devScale,
            ),
            child: Text(
              newsFull.title,
              style: theme.textStyle1,
            ),
          ),
          Indent.vertical(6.0 * devScale),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0 * devScale,
            ),
            child: Text(
              newsFull.created,
              style: theme.textStyle2,
            ),
          ),
          Indent.vertical(9.0 * devScale),
          StandardMarkdown(
            markdown: newsFull.markdown,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0 * devScale,
            ),
            child: _ActionButton(newsFull.newsAction, theme.actionButtonTheme),
          ),
          Indent.vertical(20.0 * devScale),
        ],
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final NewsAction newsAction;
  final IActionButtonTheme theme;

  const _ActionButton(this.newsAction, this.theme);

  @override
  Widget build(BuildContext context) {
    if (newsAction.type == NewsActionType.none) {
      return const SizedBox(); //Indent.vertical(20.0 * devScale);
    }

    return Container(
      margin: EdgeInsets.only(
        top: 15.0 * devScale,
        bottom: 18.0 * devScale,
      ),
      child: StandardButton(
        color: theme.backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(7.0 * devScale)),
        child: Container(
          width: double.infinity,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
            vertical: 7.0 * devScale,
          ),
          child: Text(
            newsAction.title,
            style: theme.textStyle,
          ),
        ),
        onTap: () async {
          final value = newsAction.value;

          if (newsAction.type == NewsActionType.url) {
            if (await canLaunch(value)) {
              await launch(value, forceWebView: false);
            }
          }

          if (newsAction.type == NewsActionType.schedule) {
            // Navigator.of(context).pushNamed(HomeScreen.routeName);
            //TODO: navigate to home
            // Navigator.push<SchedulePageView>(context,
            //     MaterialPageRoute(builder: (context) {
            //       return SchedulePageView.main(value);
            //     }),
            // );
          }
        },
      ),
    );
  }
}

class StandardMarkdown extends StatelessWidget {
  final String markdown;

  const StandardMarkdown({
    Key? key,
    required this.markdown,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.newsTheme.fullTheme.markdownTheme;

    return _Markdown(
      data: markdown,
      onTapLink: (url, _, __) async {
        if (await canLaunch(url)) {
          await launch(url, forceWebView: false);
        }
      },
      styleSheet: theme.styleSheet,
    );
  }
}

class _Markdown extends MarkdownBody {
  const _Markdown({
    Key? key,
    required String data,
    required MarkdownStyleSheet styleSheet,
    required MarkdownTapLinkCallback onTapLink,
  }) : super(
          key: key,
          data: data,
          styleSheet: styleSheet,
          onTapLink: onTapLink,
        );

  @override
  Widget build(BuildContext context, List<Widget>? children) {
    if (children == null) {
      return const SizedBox();
    } else {
      return Column(
        mainAxisSize: shrinkWrap ? MainAxisSize.min : MainAxisSize.max,
        crossAxisAlignment: fitContent ? CrossAxisAlignment.start : CrossAxisAlignment.stretch,
        children: _childrenMapper(children).toList(),
      );
    }
  }

  Iterable<Widget> _childrenMapper(List<Widget> children) sync* {
    for (var item in children) {
      if (item is SizedBox) {
        yield Indent.vertical(20.0 * devScale);
      } else {
        if (item is Column) {
          columnChildrenModifier(item);
          yield item;
        } else {
          yield addPadding(item);
        }
      }
    }
  }

  void columnChildrenModifier(Column column) {
    final children = column.children;
    final newChildren = _columnChildrenMapper(children).toList();
    children.clear();
    children.addAll(newChildren);
  }

  Iterable<Widget> _columnChildrenMapper(List<Widget> children) sync* {
    for (var child in children) {
      if (child is Wrap) {
        wrapChildrenModifier(child);
        yield child;
      } else {
        yield addPadding(child);
      }
    }
  }

  void wrapChildrenModifier(Wrap wrap) {
    final children = wrap.children;
    final newChildren = _wrapChildrenMapper(children).toList();
    children.clear();
    children.addAll(newChildren);
  }

  Iterable<Widget> _wrapChildrenMapper(List<Widget> children) sync* {
    for (var child in children) {
      if (child is Image) {
        yield child;
      } else {
        yield addPadding(child);
      }
    }
  }

  Widget addPadding(Widget widget) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.0 * devScale,
      ),
      child: widget,
    );
  }
}
