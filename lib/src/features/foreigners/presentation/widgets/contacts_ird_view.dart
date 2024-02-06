import 'package:bbmstu_app/src/core/widgets/indent.dart';
import 'package:bbmstu_app/src/features/foreigners/domain/entities/contact_ird_list.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final contactIRDScopedProvider = ScopedProvider<ContactIRD>(
  (ref) => throw UnimplementedError(),
);

class ContactsIRDView extends HookWidget {
  const ContactsIRDView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.foreignersTheme.contactsIRDTheme;
    final model = useProvider(contactIRDScopedProvider);
    return SizedBox(
      width: double.infinity,
      child: ColoredBox(
        color: theme.backgroundColor,
        child: Padding(
          padding: EdgeInsets.all(11 * devScale),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (model.name != null)
                Text(
                  model.name!,
                  style: theme.nameTextStyle,
                ),
              if (model.phone != null && model.name != null)
                Indent.vertical(8 * devScale),
              if (model.phone != null)
                Text(
                  'Тел.: ${model.phone!}',
                  style: theme.phoneTextStyle,
                ),
              if (model.email != null) Indent.vertical(8 * devScale),
              if (model.email != null)
                Text(
                  'e-mail: ${model.email!}',
                  style: theme.emailTextStyle,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
