import 'dart:collection';

import 'package:equatable/equatable.dart';

import 'search_type.dart';
import 'search_item.dart';

class SearchList extends Equatable with IterableMixin {
  final List<SearchItem> items;
  final SearchType searchType;

  const SearchList({
    required this.searchType,
    required this.items,
  });

  @override
  Iterator get iterator => items.iterator;

  @override
  List<Object?> get props => [
        searchType,
        items,
      ];
}
