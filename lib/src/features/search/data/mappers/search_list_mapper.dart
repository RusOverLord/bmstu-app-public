import 'package:bbmstu_app/src/features/search/data/mappers/search_item_mapper.dart';
import 'package:bbmstu_app/src/features/search/domain/models/models.dart';
import 'package:remote_api/remote_api.dart';

extension ModelsModelSearchUnitListMapper on ModelsModelSearchUnitList {
  SearchList toModel(SearchType searchType) {
    final items = this.items?.map((e) => e.toModel()).toList();
    return SearchList(
      searchType: searchType,
      items: items ?? [],
    );
  }
}
