import 'package:bbmstu_app/src/core/widgets/standard_app_bar.dart';
import 'package:bbmstu_app/src/core/widgets/standard_icons.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/features/search/domain/bloc/search_text_editing_controller.dart';
import 'package:bbmstu_app/src/features/search/widgets/search_group_scope.dart';
import 'package:bbmstu_app/src/widgets/custom/custom_text_field.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';

@immutable
class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  static final height = 75 * devScale;

  const SearchAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return StandardAppBar(
      height: height,
      showDivider: false,
      child: const Center(
        child: _SearchAppBar(),
      ),
    );
  }
}

@immutable
class _SearchAppBar extends StatelessWidget {
  const _SearchAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.searchTheme.searchBarTheme;
    final textEditingController = SearchTextEditingController(bloc: SearchGroupScope.watchBloc(context));
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(
          color: theme.inactiveColor,
          width: 1.0 * devScale,
        ),
        borderRadius: BorderRadius.all(Radius.circular(8.0 * devScale)),
      ),
      child: CustomTextFieldSearch(
        activeColor: theme.activeColor,
        hintStyle: theme.hintStyle,
        textStyle: theme.textStyle,
        textEditingController: textEditingController,
        hintText: 'Поиск',
        borderRadius: BorderRadius.all(Radius.circular(8.0 * devScale)),
        contentPadding: EdgeInsets.only(
          top: 5.0 * devScale,
          bottom: 5.0 * devScale,
          right: 5.0 * devScale,
        ),
        prefixIconConstraints: BoxConstraints.expand(
          width: 44.0 * devScale,
          height: 15.0 * devScale,
        ),
        prefixIcon: Icon(
          StandardIcons.search,
          color: theme.inactiveIconColor,
          size: 15 * devScale,
        ),
      ),
    );
  }
}
