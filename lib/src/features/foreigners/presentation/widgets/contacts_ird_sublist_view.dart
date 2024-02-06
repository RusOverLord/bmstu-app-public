import 'package:bbmstu_app/src/core/widgets/indent.dart';
import 'package:bbmstu_app/src/core/widgets/standard_rounded_wrap.dart';
import 'package:bbmstu_app/src/features/foreigners/domain/entities/contact_ird_list.dart';
import 'package:bbmstu_app/src/features/foreigners/presentation/widgets/contacts_ird_view.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final contactIRDSublistScopedProvider = ScopedProvider<ContactIRDSublist>(
  (ref) => throw UnimplementedError(),
);

class ContactsIRDSublistView extends HookWidget {
  const ContactsIRDSublistView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.foreignersTheme.contactsIRDTheme;
    final model = useProvider(contactIRDSublistScopedProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          model.title,
          style: theme.titleTextStyle,
        ),
        Indent.vertical(8 * devScale),
        StandardRoundedWrap(
          child: Column(
            children: mapChildren(model.contacts).toList(),
          ),
        )
      ],
    );
  }

  Iterable<Widget> mapChildren(List<ContactIRD> contacts) sync* {
    Widget builder(ContactIRD contact) {
      return ProviderScope(
        overrides: [
          contactIRDScopedProvider.overrideWithValue(contact),
        ],
        child: const ContactsIRDView(),
      );
    }

    yield builder(contacts.first);

    for (var i = 1; i < contacts.length; i++) {
      yield Indent.vertical(2 * devScale);
      yield builder(contacts[i]);
    }
  }
}
