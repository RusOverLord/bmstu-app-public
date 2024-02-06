import 'package:bbmstu_app/src/features/search/domain/models/search_item.dart';

class SearchItemViewModel {
  final SearchItem searchItem;

  SearchItemViewModel(this.searchItem);

  String get additional => searchItem.additional;

  String get caption => searchItem.caption;
}
