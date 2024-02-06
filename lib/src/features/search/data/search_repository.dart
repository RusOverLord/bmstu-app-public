import 'package:bbmstu_app/src/features/search/data/mappers/mappers.dart';
import 'package:bbmstu_app/src/features/search/domain/models/models.dart';
import 'package:remote_api/remote_api.dart';

class SearchCache {
  SearchList? firstSearchList;
}

abstract class ISearchRepository {
  SearchList? get firstSearchList;

  Future<SearchList> doInitSearch();

  Future<SearchList> doStepSearch(SearchStepType searchStepType, String parentUuid);

  Future<SearchList> doFreeSearch(String text);
}

class SearchRepository implements ISearchRepository {
  final SearchCache cache;
  final SearchApi _remote;

  SearchRepository({
    required this.cache,
    required SearchApi remote,
  }) : _remote = remote;

  @override
  SearchList? get firstSearchList => cache.firstSearchList;

  @override
  Future<SearchList> doInitSearch() async {
    final searchList = (await _remote.searchStep(
      SearchStepType.faculty.convertToString(),
      '',
    )).toModel(SearchType.step);
    cache.firstSearchList = searchList;
    return searchList;
  }

  @override
  Future<SearchList> doStepSearch(SearchStepType searchStepType, String parentUuid) async {
    return (await _remote.searchStep(
      searchStepType.convertToString(),
      parentUuid,
    )).toModel(SearchType.step);
  }

  @override
  Future<SearchList> doFreeSearch(String text) async => (await _remote.searchFree(text)).toModel(SearchType.free);
}
