import 'dart:collection';

import '../models/models.dart';
import 'package:equatable/equatable.dart';

import 'search_item_view_model.dart';

class SearchListViewModel extends Equatable with IterableMixin {
  final List<SearchItemViewModel> items;

  const SearchListViewModel(this.items);

  factory SearchListViewModel.fromSearchList(SearchList searchList) {
    final items = searchList.map((element) => SearchItemViewModel(element)).toList();
    return SearchListViewModel(items);
  }

  @override
  Iterator get iterator => items.iterator;

  @override
  List<Object?> get props => [
    items,
  ];
}
