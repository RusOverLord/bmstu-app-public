import 'package:bbmstu_app/src/core/widgets/standard_button.dart';
import 'package:bbmstu_app/src/features/foreigners/domain/entities/faq_list.dart';
import 'package:bbmstu_app/src/features/foreigners/presentation/pages/faq_answer_page_view.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final faqItemScopedProvider = ScopedProvider<FAQItem>(
  (ref) => throw UnimplementedError(),
);

class FAQButton extends HookWidget {
  const FAQButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.foreignersTheme.faqTheme;
    final item = useProvider(faqItemScopedProvider);
    return StandardButton.navigateNext(
      onTap: () => pushFAQAnswer(context, item),
      child: SizedBox(
        height: 100 * devScale,
        child: Padding(
          padding: EdgeInsets.all(10 * devScale),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              item.question,
              style: theme.paragraphTextStyle,
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
            ),
          ),
        ),
      ),
    );
  }
}
