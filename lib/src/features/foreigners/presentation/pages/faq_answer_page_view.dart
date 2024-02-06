import 'package:bbmstu_app/src/core/widgets/indent.dart';
import 'package:bbmstu_app/src/core/widgets/standard_app_bar.dart';
import 'package:bbmstu_app/src/features/foreigners/domain/entities/faq_list.dart';
import 'package:bbmstu_app/src/features/news/presentation/pages/news_full_view.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

Future<void> pushFAQAnswer(BuildContext context, FAQItem item) {
  return Navigator.of(context).push<void>(
    MaterialPageRoute(
      settings: const RouteSettings(name: 'FAQAnswerPageView'),
      builder: (context) {
        return SafeArea(
          child: FAQAnswerPageView(
            item: item,
          ),
        );
      },
    ),
  );
}

class FAQAnswerPageView extends HookWidget {
  final FAQItem item;

  const FAQAnswerPageView({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.foreignersTheme.faqTheme;
    return Scaffold(
      appBar: StandardAppBar.title(
        title: 'Контакты УМС',
      ),
      body: ListView(
        children: [
          Indent.vertical(31 * devScale),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20 * devScale,
            ),
            child: Text(
              item.question,
              style: theme.titleTextStyle,
            ),
          ),
          Indent.vertical(24 * devScale),
          StandardMarkdown(
            markdown: item.answer,
          ),
          Indent.vertical(20 * devScale),
        ],
      ),
    );
  }
}
