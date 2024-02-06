import 'package:bbmstu_app/src/core/features/error_label/presentation/widgets/error_label.dart';
import 'package:bbmstu_app/src/core/widgets/indent.dart';
import 'package:bbmstu_app/src/core/widgets/standard_app_bar.dart';
import 'package:bbmstu_app/src/core/widgets/standard_rounded_wrap.dart';
import 'package:bbmstu_app/src/features/foreigners/domain/entities/faq_list.dart';
import 'package:bbmstu_app/src/features/foreigners/presentation/bloc/faq_notifier.dart';
import 'package:bbmstu_app/src/features/foreigners/presentation/widgets/faq_view.dart';
import 'package:bbmstu_app/src/core/widgets/standard_loading_ring.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> pushFAQ(BuildContext context) {
  return Navigator.of(context).push<void>(
    MaterialPageRoute(
      settings: const RouteSettings(name: 'FAQPageView'),
      builder: (context) {
        return const SafeArea(
          child: FAQPageView(),
        );
      },
    ),
  );
}

class FAQPageView extends StatelessWidget {
  const FAQPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StandardAppBar.title(
        title: 'Контакты УМС',
      ),
      body: HookBuilder(
        builder: (context) {
          final state = useProvider(faqNotifierProvider);
          return state.map(
            loading: (loading) => const StandardLoadingRing(),
            data: (data) => _DataView(
              list: data.viewModel,
            ),
            error: (error) => const _ErrorView(),
          );
        },
      ),
    );
  }
}

class _DataView extends StatelessWidget {
  final FAQList list;

  const _DataView({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.foreignersTheme.faqTheme;
    return ListView(
      padding: EdgeInsets.only(
        bottom: 20 * devScale,
        right: 20 * devScale,
        left: 20 * devScale,
      ),
      children: [
        Indent.vertical(31 * devScale),
        Text(
          list.title,
          style: theme.titleTextStyle,
        ),
        Indent.vertical(24 * devScale),
        StandardRoundedWrap(
          child: Column(
            children: mapChildren(list.items.toList()).toList(),
          ),
        ),
      ],
    );
  }

  Iterable<Widget> mapChildren(List<FAQItem> list) sync* {
    Widget builder(FAQItem element) {
      return ProviderScope(
        overrides: [
          faqItemScopedProvider.overrideWithValue(element),
        ],
        child: const FAQButton(),
      );
    }

    yield builder(list.first);

    for (var i = 1; i < list.length; i++) {
      yield Indent.vertical(2 * devScale);
      yield builder(list[i]);
    }
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Spacer(),
        ErrorLabel('Нет сети'),
      ],
    );
  }
}
