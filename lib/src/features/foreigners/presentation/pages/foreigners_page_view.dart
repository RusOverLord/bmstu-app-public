import 'package:bbmstu_app/src/core/widgets/broadcaster_list_view.dart';
import 'package:bbmstu_app/src/core/widgets/indent.dart';
import 'package:bbmstu_app/src/core/widgets/standard_asset_image.dart';
import 'package:bbmstu_app/src/core/widgets/standard_button.dart';
import 'package:bbmstu_app/src/core/widgets/standard_rounded_wrap.dart';
import 'package:bbmstu_app/src/features/foreigners/presentation/pages/contacts_ird_page_view.dart';
import 'package:bbmstu_app/src/features/foreigners/presentation/widgets/square_section_view.dart';
import 'package:bbmstu_app/src/features/settings/widgets/settings_screen.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';

class ForeignersPageView extends StatelessWidget {
  const ForeignersPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.foreignersTheme.mainScreenTheme;
    return BroadcasterListView<SettingsScreen>(
      child: Padding(
        padding: EdgeInsets.only(
          top: 5 * devScale,
          bottom: 20 * devScale,
          right: 20 * devScale,
          left: 20 * devScale,
        ),
        child: Column(
          children: [
            // const MigrationStatusView(),
            // Indent.vertical(12 * devScale),
            // Row(
            //   children: <Widget>[
            //     SquareSectionView(
            //       text: 'Запись на приём',
            //       imagePadding: EdgeInsets.only(
            //         top: 9 * devScale,
            //         left: 16 * devScale,
            //         right: 48 * devScale,
            //       ),
            //       imageAsset: ImageAsset.make_an_appointment,
            //       onTap: () {},
            //     ),
            //     Indent.horizontal(12 * devScale),
            //     SquareSectionView(
            //       text: 'Справки',
            //       imagePadding: EdgeInsets.only(
            //         top: 16 * devScale,
            //         left: 13 * devScale,
            //         right: 19 * devScale,
            //       ),
            //       imageAsset: ImageAsset.references,
            //       onTap: () {},
            //     ),
            //   ],
            // ),
            // Indent.vertical(12 * devScale),
            Row(
              children: <Widget>[
                SquareSectionView(
                  text: 'Правила миграционного учёта',
                  imagePadding: EdgeInsets.only(
                    top: 4 * devScale,
                    left: 39 * devScale,
                    right: 49 * devScale,
                  ),
                  imageAsset: ImageAsset.rules_of_migration_registration,
                  onTap: () {},
                ),
                Indent.horizontal(12 * devScale),
                SquareSectionView(
                  text: 'Медицинское страхование',
                  imagePadding: EdgeInsets.only(
                    top: 17 * devScale,
                    left: 14 * devScale,
                    right: 31 * devScale,
                  ),
                  imageAsset: ImageAsset.medical_insurance,
                  onTap: () {},
                ),
              ],
            ),
            Indent.vertical(15 * devScale),
            StandardRoundedWrap(
              child: StandardButton.iconTextNavigate(
                caption: 'Контакты УМС',
                captionStyle: theme.contactsTextStyle,
                onTap: () => pushContactsIRD(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
