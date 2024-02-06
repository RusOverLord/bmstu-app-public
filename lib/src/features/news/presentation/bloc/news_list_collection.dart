import 'package:bbmstu_app/src/features/news/domain/entities/news_list.dart';
import 'package:bbmstu_app/src/features/news/domain/entities/news_preview.dart';

// interface for news list view
abstract class NewsListIterable {
  int get itemsCount;
  NewsPreview operator [](int index);
}

// abstract collection for news logic component
abstract class NewsListCollection implements NewsListIterable {
  factory NewsListCollection({
    required List<NewsList> newsLists,
  }) = NewsListCollectionImpl;

  int get length;
  bool get lastIsFull;
  bool get isEmpty;
  bool get isNotEmpty;

  NewsPreview get first;

  void add(NewsList newsList);
  void replaceLast(NewsList newsList);
  void clear();
}

class NewsListCollectionImpl implements NewsListCollection {
  final List<NewsList> newsLists;

  NewsListCollectionImpl({
    required this.newsLists,
  });

  int get pageSize {
    if (newsLists.isEmpty) {
      return 0;
    }

    return newsLists[0].pageSize;
  }

  @override
  int get itemsCount {
    if (newsLists.isEmpty) {
      return 0;
    }

    return (newsLists.length - 1) * pageSize + newsLists.last.length;
  }

  @override
  int get length => newsLists.length;

  @override
  bool get isEmpty => newsLists.isEmpty;

  @override
  bool get isNotEmpty => newsLists.isNotEmpty;

  @override
  NewsPreview get first => this[0];

  @override
  bool get lastIsFull {
    if (isEmpty) {
      throw Exception(
          'Trying to call lastIsFull method on empty NewsListsCollection');
    }

    return pageSize == newsLists.last.length;
  }

  @override
  NewsPreview operator [](int index) {
    final newsListIndex = (index / pageSize).floor();
    final indexInNewsList = index - newsListIndex * pageSize;
    return newsLists[newsListIndex][indexInNewsList];
  }

  @override
  void add(NewsList list) => newsLists.add(list);

  @override
  void replaceLast(NewsList list) {
    if (isEmpty) {
      throw Exception(
          'Trying to call replaceLast method on empty NewsListsCollection');
    }

    newsLists[newsLists.length - 1] = list;
  }

  @override
  void clear() => newsLists.clear();
}
