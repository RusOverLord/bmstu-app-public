import 'package:bbmstu_app/src/core/widgets/standard_button.dart';
import 'package:bbmstu_app/src/features/search/domain/view_models/search_item_view_model.dart';
import 'package:bbmstu_app/src/features/search/widgets/search_group_scope.dart';
import 'package:flutter/material.dart';

class SearchItemView extends StatelessWidget {
  final SearchItemViewModel viewModel;

  const SearchItemView({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardButton.iconTextNavigate(
      caption: viewModel.caption,
      additional: viewModel.additional,
      onTap: () => SearchGroupScope.itemTap(context: context, searchItem: viewModel.searchItem),
    );
  }
}
