import 'dart:collection';

import 'package:bbmstu_app/src/features/search/domain/models/models.dart';
import 'package:bbmstu_app/src/features/search/domain/view_models/search_list_view_model.dart';

class TDSearchListViewModel with IterableMixin {
  final List<SearchListViewModel> items;

  const TDSearchListViewModel(this.items);

  factory TDSearchListViewModel.fromIterable(Iterable<SearchListViewModel> items) {
    return TDSearchListViewModel(items.toList());
  }

  factory TDSearchListViewModel.fromSearchLists(Iterable<SearchList> searchLists) {
    final items = searchLists.map((e) => SearchListViewModel.fromSearchList(e));
    return TDSearchListViewModel.fromIterable(items);
  }

  TDSearchListViewModel insert(SearchListViewModel item, SearchStepType step) {
    final items = this.items.sublist(0, step.index - 1)..add(item);
    return TDSearchListViewModel(items);
  }

  @override
  Iterator get iterator => items.iterator;
}

