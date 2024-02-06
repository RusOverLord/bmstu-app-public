import 'package:bbmstu_app/src/core/features/error_label/presentation/widgets/error_label.dart';
import 'package:bbmstu_app/src/core/widgets/indent.dart';
import 'package:bbmstu_app/src/core/widgets/standard_app_bar.dart';
import 'package:bbmstu_app/src/features/foreigners/domain/entities/contact_ird_list.dart';
import 'package:bbmstu_app/src/features/foreigners/presentation/bloc/contacts_ird_notifier.dart';
import 'package:bbmstu_app/src/features/foreigners/presentation/pages/faq_page_view.dart';
import 'package:bbmstu_app/src/features/foreigners/presentation/widgets/contacts_ird_sublist_view.dart';
import 'package:bbmstu_app/src/core/widgets/standard_loading_ring.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> pushContactsIRD(BuildContext context) {
  return Navigator.of(context).push<void>(
    MaterialPageRoute(
      settings: const RouteSettings(name: 'ContactsIRDPageView'),
      builder: (context) {
        return const SafeArea(
          child: ContactsIRDPageView(),
        );
      },
    ),
  );
}

class ContactsIRDPageView extends StatelessWidget {
  const ContactsIRDPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StandardAppBar.title(
        title: 'Контакты УМС',
      ),
      body: HookBuilder(
        builder: (context) {
          final state = useProvider(contactsIRDNotifierProvider);
          return state.map(
            loading: (loading) => const StandardLoadingRing(),
            data: (data) => _DataView(
              contacts: data.viewModel,
            ),
            error: (error) => const _ErrorView(),
          );
        },
      ),
    );
  }
}

class _DataView extends StatelessWidget {
  final ContactIRDList contacts;

  const _DataView({
    Key? key,
    required this.contacts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.foreignersTheme.contactsIRDTheme;
    return ListView(
      padding: EdgeInsets.only(
        bottom: 20 * devScale,
        right: 20 * devScale,
        left: 20 * devScale,
      ),
      children: [
        ...mapChildren(contacts.contactLists).toList(),
        Indent.vertical(31 * devScale),
        GestureDetector(
          onTap: () => pushFAQ(context),
          child: Text(
            contacts.bottomLinkText,
            style: theme.faqTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Iterable<Widget> mapChildren(List<ContactIRDSublist> list) sync* {
    for (var element in list) {
      yield Indent.vertical(31 * devScale);
      yield ProviderScope(
        overrides: [
          contactIRDSublistScopedProvider.overrideWithValue(element),
        ],
        child: const ContactsIRDSublistView(),
      );
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
